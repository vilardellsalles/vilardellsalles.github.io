.. post:: August 31, 2014
   :tags: engineering, python, software

Some reasons to create a web site using Python
==============================================

If you ask some astronomers about how to create a web page, most answers would
mention HTML or PHP. Few would mention Python as a language to create a web
page. However, the page that you are reading (and many others) has been created
using Python. In this new post, I explain some of the advantages to create web
pages using Python.

In the last few years, `Python <https://www.python.org/>`_ has become one of
the most used languages in the academic and scientific world. Even several
reasons can be put forward, Python has four essential ingredients:

* It is a language that can be learned really fast.
* It is installed by default in most platforms, or it can be easily installed in the others.
* Since it is an interpreted language, `code does not have to be compiled <https://towardsdatascience.com/how-does-python-work-6f21fd197888>`_.
* It has a great amount of libraries that are installed by default.

.. update:: October 23, 2021

   Link added to explain better what I mean by non-compiled code.

It is important to remark that a scientist will only use those tools that
provide the fastest possible way to compute a complex calculation. Therefore,
if a code takes slightly longer to execute, but can be learned in one
afternoon, that will be chosen in most of the cases.

The reasons expressed above have stimulated the scientific community to develop
and use a huge amount of programs and libraries written in Python. Some of
these packages are really popular, like `Numpy, Scipy, Matplotlib, IPython,
Sympy and Pandas <https://scipy.org/>`_, to mention just a few.
Astronomical community has not been an exception to this rule, developing and
using programs and libraries like `Astropy <https://www.astropy.org/>`_ and
`Sunpy <https://sunpy.org/>`_.

.. update:: October 23, 2021

   PyRAF is no longer supported. Sunpy has been included instead.

All these applications are used mainly locally. When we need a library, we
download it to our computer and execute it in there. All the vitality that the
scientific community has shown to develop new applications in Python,
disappears when developing web applications. There are many reasons to explain
this phenomenon, but I would highlight three largely extended beliefs:

* A web application provides no great advantages to do the calculations that a scientist needs.
* New programming languages have to be learned, like `HTML, CSS, Javascript, <https://www.w3schools.com/>`_ ...
* None of these languages has the libraries that scientists need to create their applications.

The first one of the points above can be easily refuted. Most astronomers use
technologies like the `Virtual Observatory <https://www.ivoa.net/>`_, the `ADS
<https://ui.adsabs.harvard.edu/>`_, or the `CDS <http://cds.u-strasbg.fr/>`_.
All these technologies are used, basically, to share information among the
astronomers.  In fact, the Virtual Observatory is much more than a web site: it
is a set of protocols, agreed among the astronomical community, to share
information through Internet. In addition, most professional observatories
share their data using the Virtual Observatory.

The other two points above are not completely true, either, if we add Python to
the list of languages. In fact, Python is the only language required if we use
some applications like the `IPython Notebook (currently known as Jupyter)
<https://jupyter.org/>`_. Since the release of IPython Notebook 2.0, in April
2014, it represents an excellent tool to use Python in our browser, by knowing
Python only. In addition, since we are using Python, we have access to all the
libraries in Python, in the same way that we were working locally.

.. update:: October 23, 2021

   Ipython Notebook was `split from Ipython during 2014-2015
   <https://blog.jupyter.org/the-big-split-9d7b88a031a7>`_ and renamed as
   Jupyter. Link has been updated to the Jupyter site.

In case that we do not want to use IPython Notebook, it is rather common that
scientists know some HTML and CSS, likely because it is relatively easy to
learn. In addition, at the dawn of the Internet era, HTML and CSS were the only
languages needed to create a web page. In fact, a web page can be created using
only HTML and CSS even today, but there is something that we will never be able
to do with those two languages: loading dynamic content. Dynamic content
includes all those elements that can change, depending on the person or the
moment that the web page is loaded.

Two types of programs can be used to load dynamic content: the ones loaded on
the server that provides the web page, and the ones being executed on the
client side, where we are loading the web page. On the server side, almost any
code can be executed, but not all the languages can be perfectly integrated in
a HTML document. In fact, this is the main reason because `PHP
<https://www.php.net/>`_ has extended as one of the main programming languages
to create web pages.  Unfortunately, the number of astronomical (or scientific)
libraries in PHP is almost non-existent, and we have to use other languages for
that. It is precisely in this particular aspect that Python stands out. Python
can be seamlessly integrated in a HTML document, without the need for any other
programming language.

Regarding the codes that can be executed on the client side, they must be
executed by our browser. Even several extensions can be installed to understand
other languages, JavaScript is the only code that the main browsers understand
by default, in addition to HTML and CSS. Once again, the number of astronomical
libraries in JavaScript is rather small, even some `interesting libraries
<http://aladin.u-strasbg.fr/AladinLite/doc/>`_ are starting to be developed.

.. update:: October 23,2021

   Link to Aladin Lite documentation updated.

Summarizing
-----------

Some of the main reasons to create web site using Python are:

#. It is a language that can be learned really fast.
#. It is installed by default in most platforms, or it can be easily installed in the others.
#. Since it is an interpreted language, code does not have to be compiled.
#. It has a great amount of libraries that are installed by default.
#. A large community is developing new scientific libraries, including astronomical ones.
#. It can be seamlessly integrated in a HTML document, allowing dynamic content to be loaded in a web site.

The web page that you are currently reading is a good example on how you can
create a web page, knowing only HTML, CSS and Python.

.. update:: October 23, 2021

   The post on how to create a web site in Python was largely outdated and has
   been removed. The next post will no longer explain that.
