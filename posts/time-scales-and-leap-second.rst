.. post:: February 9, 2017
   :tags: time, astronomy

Time scales and leap second
===========================

After a time of silence, I come back to this blog to explain one of the most
fundamental concepts with completely different visions between astronomers and
engineers: the time. One might think that measuring time is a simple thing, you
only have to keep adding seconds and everything is solved. If that was the
case, why last December 31, 2016, had an extra second? In this post, I explain
some of the existing time scales and one of the more deeply disconcerting time
concepts: the leap second.

.. update:: October 30, 2021

   It has been clarified everywhere that this post refers to the leap second
   introduced in December 31, 2016. 

Time zones
----------

Everybody is used to work with dates. We are used to talk about years, months,
days, hours, minutes, seconds,... The tricky thing is the concept behind these
values. In daily life, that is rather irrelevant. We all know that a day has 24
hours and an hour has 60 minutes. A minute has, in most cases, 60 seconds.
Therefore, a day has 86400 seconds. One could correctly say that the time that
our clocks tell (including our computers) is the official time of our country.
It is well known that different countries have different times. The different
time zones are usually represented in a world map like the following one:

.. figure:: https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/World_Time_Zones_Map.png/1024px-World_Time_Zones_Map.png

   `World map of current de facto time zones <https://commons.wikimedia.org/w/index.php?title=File:World_Time_Zones_Map.png&uselang=en>`_.

.. update:: January 2, 2024

   Caption in world map updated to properly reflect any possible changes.

According to the map above, when for example its 1 p.m at Barcelona, it can be
7 a.m at New York. Therefore, when you travel from Barcelona to New York, you
have to change the time of your watch. The reason behind these time zones is
not so clear.

Time zones exist because Earth is spherical. Since Earth is spherical, one of
its sides is illuminated by the Sun, while the other side is at night: 

.. raw:: html

   <video width="100%" autoplay loop>
       <source src="../_static/Earth_rotation.mp4" type="video/mp4">
   </video>

.. container:: caption

   Video showing how different Earth zones have different orientations with
   respect to the Sun, placed towards the left of the video. Video made with
   `Celestia <https://celestia.space/>`_.

Historically, the time when the Sun is at its highest point has been called 12
at noon. Since different places on Earth have a slightly different orientation
with respect to the Sun, the time of each point on Earth has to be necessarily
different. On the contrary, you could have the Sun rising at 8 p.m. or setting
at 10 a.m.

Coordinated Universal Time (UTC)
--------------------------------

The different time zones are just an annoyance when traveling, but it is a
relevant issue when communicating with people or computers placed all around
the globe. In order to synchronize the timestamps of all the computers around
the World, the time of one of the time zones is used. The reference time zone
is, for historical reasons, the time of Greenwich (Great Britain) on winter and
it is called **Coordinated Universal Time (UTC)**. This time scale is widely
adopted and the different countries define their official time from it, by
adding or subtracting the different time zones and, in some countries (Great
Britain included), the summer time. This way, all the places in a single
country have the same time and, when going from one country to another, only
the hours have to be changed (the minutes and the seconds remain the same). 

Up to now, I have explained how the time of ours clocks is defined, but I have
not explained how Coordinated Universal Time is determined. Ideally, UTC could
be defined in a way that the Sun always needed 24 exact hours (86400 seconds)
to pass twice over the same place on Earth. But Earth is not a perfect sphere,
rotating totally unaware of other phenomena occurring around it. The Sun, the
Moon and the tides, the defrosting of poles in summer, earthquakes and all the
phenomena that imply a mass movement have some effect on the Earth orientation.
Therefore, if a second had always 86400 seconds, exactly, and the length of a
day changed, the duration of a second could depend on any of the different
phenomena that affect Earth rotation.

International Atomic Time (TAI)
-------------------------------

When atomic clocks emerged, time could be measured in a stable way, allowing a
solid definition of the second. Hence, in 1968, `the second was defined as the
time needed by an electron to perform 9,192,631,770 energy transitions in a
cesium atom <https://www.nist.gov/si-redefinition/second-introduction>`_. In
1997, the definition was reviewed to clarify that `the cesium atom has to be at
rest <https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication330e2008.pdf>`_.
There are two aspects that I would like to remark from this definition:

* The first relevant aspect is that a second is defined for an atom at rest. According to Einstein's theory of relativity, time runs differently for two observers having a relative speed between each other. Different clocks moving at different speeds (e.g., `in artificial satellites <https://www.astronomy.ohio-state.edu/pogge.1/Ast162/Unit5/gps.html>`_) have been observed to run differently.
 
* The second relevant aspect is the number of transitions defining a second. Why a second was not defined as the duration of 9 billion energy transitions? It would have been much easier to remember and it would have implied almost no difference (less than 3%). The underlying reason is that if an UTC day had to continue having 86400 seconds, it was determined that a second required the number of transitions above.

.. update:: October 30, 2021

   Links to the definition of second have been updated. Text has also been
   slightly modified to better explain the relativistic correction and to
   highlight that the definition of second was updated in 1997.

The stable definition of a second, independent of external phenomena, allows
the definition of a constant day, having always 86400 seconds. These new
definitions led to the creation of a new time scale, the **International Atomic
Time (TAI)**. It important to remark that this definition does not depend on
the Earth orientation.

Leap seconds
------------

In most cases, an UTC day and a TAI day have exactly the same duration: 86400
seconds. But, as mentioned above, Earth rotation is not perfectly constant.
Earth is slowing down because Moon is breaking it, through tides. As time goes
by, if UTC and TAI remained the same, UTC would no longer reflect the Earth
orientation. Therefore, from time to time, some corrections are required to UTC
to keep it up with Earth rotation.

When the time defined by the real Earth orientation (called UT1) deviates from
UTC more than 0.5 seconds, an entire second is subtracted from UTC time, by
introducing an extra second at midnight (on June 31 or on December 31). The
last time it happened was between December 31, 2016, and January 1, 2017, by
allowing that the 23:59:60 hours was a valid value.

.. bokeh-plot:: _plots/time_diffs_en.py
   :source-position: none

.. container:: caption

   Time difference UT1-TAI and UTC-TAI for each year. Every step in the blue
   line corresponds to a leap second.

Most computers base their time on UTC, but leap seconds make that it cannot be
considered constant, with the day having always 86400 seconds and a minute
always lasting 60 seconds. There are some moments, like December 31, 2016,
when a minute lasts 61 seconds. This fact has been ignored in most software and
`caused several errors in the past 
<https://en.wikipedia.org/wiki/Leap_second#Issues_created_by_insertion_(or_removal)_of_leap_seconds>`_,
even in large multinationals. Some proposals to abolish the leap second have
been made, by changing the definition of UTC, but a better solution could be to
change the reference time of the computers, using TAI instead of UTC. But I may
better talk about it in another post.
