import warnings
from datetime import datetime

from astropy.time import Time
from astropy.utils import iers

import bokeh.plotting as plt
from bokeh.models.tools import HoverTool


def ut1_utc(data):
    """
    Retrieve UT1-UTC from IERS
    """

    try:
        with warnings.catch_warnings():
            warnings.simplefilter("error")

            ut1diff = []
            utcdiff = []
            iers_date = []
            now = Time.now()
            for mjd, ut1utc in data["MJD", "UT1_UTC"]:
                today = Time(mjd, format="mjd")
                if today > now:
                    continue
                iers_date += [today.iso.split()[0]]
                utcdiff += [(today.utc.jd - today.tai.jd)*86400]
                ut1diff += [ut1utc.value + utcdiff[-1]]

    except Exception:
        print("Error when reading date from input file:", today)
        raise

    return iers_date, utcdiff, ut1diff


def main(x_label, y_label):
    """
    Compute UT1-TAI plot
    """

    data = iers.IERS_B.open(iers.IERS_B_URL)
    iers_date, utcdiff, ut1diff = ut1_utc(data)
    dates = Time(iers_date).datetime

    plot_data = {"dates": dates, "ut1diff": ut1diff, "utcdiff": utcdiff}

    max_year = (max(dates).year // 10 + 1) * 10

    x_range = (datetime(1960, 1, 1), datetime(max_year, 1, 1))
    if min(dates).year < 1960 or min(dates).year > 1970:
        raise ValueError("Minimum date is not in the 1960!")

    mindiff = (min(utcdiff + ut1diff) // 10) * 10
    if max(utcdiff + ut1diff) > 0:
        raise ValueError("Maximum value in time diffs is larger than 0!")
    y_range = (mindiff, 0)

    tooltips = [(x_label, "@dates{%F}"), ("UT1-TAI", "@ut1diff s"),
                ("UTC-TAI", "@utcdiff s")]

    tools = "pan,wheel_zoom,box_zoom,save,undo,redo,reset".split(",")
    tools += [HoverTool(tooltips=tooltips, formatters={"@dates": "datetime"})]

    figure = plt.figure(plot_width=750, plot_height=450, tools=tools,
                        x_range=x_range, x_axis_type="datetime",
                        x_axis_label=x_label, y_range=y_range,
                        y_axis_label=y_label, sizing_mode="scale_width")
    figure.line("dates", "ut1diff", source=plot_data, color="black",
                legend_label="UT1-TAI")
    figure.line("dates", "utcdiff", source=plot_data, color="blue",
                legend_label="UTC-TAI")

    figure.xaxis.formatter.months = ["%Y-%m"]
    figure.xaxis.formatter.days = ["%F"]

    plt.save(figure)
