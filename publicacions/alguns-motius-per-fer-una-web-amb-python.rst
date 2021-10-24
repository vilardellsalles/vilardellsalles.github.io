.. post:: 31 agost de 2014
   :tags: enginyeria, python, programari

Alguns motius per fer una web amb Python
========================================

Si pregunteu a un astrònom com es fa una pàgina web, la majoria de respostes
farien referència a HTML o PHP. Molt pocs us mencionarien Python com a
llenguatge per fer una pàgina web. De tota manera, la pàgina que esteu llegint
(i moltes altres) està feta amb Python. En aquesta nova entrada, us explico
alguns dels avantatges de fer pàgines web amb Python.

En els darrers anys, `Python <https://www.python.org/>`_  s'ha convertit en un
dels llenguatges de programació més utilitzats en el món científic i acadèmic.
Tot i que els motius són molt diversos, Python té quatre ingredients que són
essencials:

* És un llenguatge que es pot aprendre molt ràpidament.
* Es troba instal·lat per defecte en molts sistemes operatius, o es pot instal·lar molt fàcilment en els altres.
* Al ser un llenguatge interpretat, `evita haver de compilar el codi <https://towardsdatascience.com/how-does-python-work-6f21fd197888>`_.
* Té una gran quantitat de llibreries que vénen instal·lades per defecte.

.. update:: 23 octubre de 2021

   He afegit un enllaç per explicar millor què vull dir amb llenguatge no
   compilat.

Cal tenir present que un científic només farà servir aquelles eines que li
permetin resoldre un càlcul complex de la manera més ràpida possible. Això
implica que si un codi triga una mica més a executar-se, però es pot aprendre
en una tarda, aquest serà l'escollit en la majoria de casos.

Els motius expressats anteriorment, han provocat que la comunitat científica
hagi començat a utilitzar i desenvolupar una quantitat impressionant de
programes i llibreries en Python, entre les quals s'hi troben paquets tant
coneguts com `Numpy, Scipy, Matplotlib, IPython, Sympy i Pandas
<http://www.scipy.org/>`_, entre molts altres. La comunitat astronòmica no ha
estat una excepció, desenvolupant i fent servir programes i llibreries com
`Astropy <https://www.astropy.org/>`_ i `Sunpy <https://sunpy.org/>`_.

.. update:: 23 octubre de 2021

   PyRAF ja no està mantingut. S'ha inclòs Sunpy al seu lloc.

Totes aquestes aplicacions es fan servir, sobretot, de manera local. És a dir,
quan ens fa falta una llibreria, la descarreguem al nostre ordinador i
l'executem. Tota la vitalitat que la comunitat científica ha demostrat a l'hora
de desenvolupar noves aplicacions en Python, s'esvaeix a l'hora de desenvolupar
aplicacions web. Hi ha moltes causes per explicar aquest fenomen, però hi ha
tres creences molt esteses que jo destacaria:

* Una aplicació web no aporta cap gran avantatge a l'hora de fer els càlculs que un científic necessita.
* Cal aprendre nous llenguatge de programació: HTML, CSS, JavaScript, etc.
* Cap d'aquests llenguatges té les llibreries que els científics necessiten per fer les seves aplicacions.

El primer dels tres punts es pot rebatre fàcilment. La immensa majoria dels
astrònoms fan servir tecnologies com l'`Observatori Virtual
<https://www.ivoa.net/>`_, l'`ADS <https://ui.adsabs.harvard.edu/>`_ o el `CDS
<http://cds.u-strasbg.fr/>`_. Totes aquestes tecnologies serveixen, bàsicament,
per compartir informació entre els astrònoms. De fet, l'Observatori Virtual és
molt més que un lloc web: és una sèrie de protocols acordats per la comunitat
astronòmica per tal de compartir informació a través d'Internet. És més, la
majoria d'observatoris professionals comparteixen les dades obtingudes a través
de l'Observatori Virtual.

Els altres dos punts tampoc són del tot certs si, a la llista de llenguatges,
hi afegim Python. De fet, Python és l'únic llenguatge necessari si fem servir
aplicacions com el `IPython Notebook (actualment conegut com Jupyter)
<https://jupyter.org/>`_. Des que es va llançar la versió de Ipython Notebook
2.0, a l'abril del 2014, aquest representa una excel·lent manera de fer servir
Python des del nostre navegador, sabent únicament Python. A més, al fer servir
Python, tenim accés a totes les llibreries de Python, de la mateixa manera que
si estiguessim treballant de manera local.

.. update:: 23 octubre de 2021

   El Ipython Notebook es va `separar de Ipython durant el 2014-2015
   <https://blog.jupyter.org/the-big-split-9d7b88a031a7>`_ per passar-se a
   anomenar Jupyter. L'enllaç s'ha actualitzat al lloc web de Jupyter.

En cas que no vulguem fer servir el IPython Notebook, sol ser força habitual
que els científics tinguin un cert coneixement de HTML i de CSS, probablement
perquè també és relativament senzill d'aprendre. A més, al començament de l'era
d'Internet, només calia saber HTML i CSS per fer una pàgina web. De fet, encara
avui dia es pot fer una pàgina web sabent només HTML i CSS, però hi ha una cosa
bàsica que no podrem fer amb aquests dos llenguatges: carregar contingut
dinàmic. El contingut dinàmic conté tot aquells elements que poden variar en
funció de la persona o del moment en el que es carrega la pàgina.

Per carregar contingut dinàmic, es solen fer servir dos tipus de programes: els
que s'executen al servidor que conté la pàgina web i els que s'executen en el
client, des d'on estem carregant la pàgina web. En el costat del servidor hi
podem executar pràcticament qualsevol llenguatge, però no tots els llenguatges
s'integren perfectament dins d'un document HTML. De fet, és precisament per
aquest motiu que `PHP <https://www.php.net/>`_ s'ha estès com un dels
principals llenguatges per fer pàgines web. Desgraciadament, el nombre de
llibreries astronòmiques (o científiques) en PHP és pràcticament inexistent,
amb el què cal acabar recorrent a un altre llenguatge de programació. És
precisament en aquest punt on Python marca la diferència amb altres
llenguatges, ja que es pot integrar perfectament dins un document HTML sense
necessitat de cap altre llenguatge de programació.

Per altra banda, tots els llenguatges que s'executin en el costat del client
han de ser executats pel nostre navegador. Tot i que es poden instal·lar
diverses extensions per entendre altres llenguatges, l'únic codi que els
principals navegadors poden entendre per defecte, a part de HTML i de CSS, és
JavaScript. Una vegada més, el nombre de llibreries astronòmiques en JavaScript
encara és molt reduït, tot i que s'estant començant a desenvolupar algunes
`llibreries força interessants <http://aladin.u-strasbg.fr/AladinLite/doc/>`_.

.. update:: 23 octubre de 2021

    L'enllaç a la documentació d'Aladin Lite s'ha actualitzat.

Resumint
--------

Alguns dels principals motius per fer pàgines web amb Python són:

#. És un llenguatge que es pot aprendre molt ràpidament.
#. Es troba instal·lat per defecte en molts sistemes operatius, o es pot instal·lar molt fàcilment en els altres.
#. Al ser un llenguatge interpretat, evita haver de compilar el codi.
#. Té una gran quantitat de llibreries que vénen instal·lades per defecte.
#. Hi ha una gran comunitat desenvolupant noves llibreries científiques, incloent les astronòmiques.
#. S'integra perfectament dins un document HTML, permetent carregar contingut dinàmic en una pàgina web.

Aquesta pàgina que acabeu de llegir és un bon exemple de com, sabent només
HTML, CSS i Python es pot fer una pàgina web.

.. update:: 23 octubre de 2021

   La publicació sobre com crear un lloc web amb Python estava molt antiquada i
   s'ha eliminat. La propera publicació ja no explicarà això.
