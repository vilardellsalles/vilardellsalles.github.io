.. post:: 9 febrer de 2017
   :tags: temps, astronomia

Les escales de temps i el segon intercalar
==========================================

Després d'un temps de silenci, retorno a aquest bloc per explicar un dels
conceptes més bàsics en el que astrònoms i enginyers tenen visions clarament
diferents: el temps. Pot semblar que la mesura del temps és una cosa senzilla,
només cal anar sumant segons i ja està. Si això fos així, perquè el passat 31
de desembre de 2016 va tenir un segon de més? En aquesta entrada us explico
algunes de les escales de temps que existeixen i un dels conceptes temporals
més desconcertants: el segon intercalar.

.. update:: 30 octubre de 2021

   Tot i que, de moment, no hi ha hagut cap nou segon intercalar des que es va
   escriure aquest article, s'ha precisat a tot arreu que el segon intercalar
   al que es refereix aquest article es va introduir al 31 de desembre de 2016.

Les zones horàries
------------------

Tothom està acostumat a treballar amb dates. Parlem sense problemes d'anys,
mesos, dies, hores, minuts, segons, etc. El què no està tan clar és a què ens
referim quan fem servir aquests valors. En la vida diària, això ens és una mica
igual. Sabem que un dia té 24 hores i que una hora té 60 minuts. Un minut, al
seu torn, té (gairebé sempre) 60 segons o, el què és el mateix, que un dia té
86400 segons. Algú podria dir, encertadament, que l'hora que marquen els
nostres rellotges (inclosos els nostres ordinadors) és l'hora oficial del
nostre país. És ben conegut que diversos països tenen zones horàries diferents.
Les diferents zones horàries es solen representar amb un mapa del món com el
següent:


.. figure:: https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/World_Time_Zones_Map.png/1024px-World_Time_Zones_Map.png

   `Mapa mundial de les zones horàries de facto actuals <https://commons.wikimedia.org/w/index.php?title=File:World_Time_Zones_Map.png&uselang=ca>`_.

.. update:: 2 de gener de 2024

   Peu de figura en el mapa mundial actualitzat per reflectir millor els
   possibles canvis.

Així doncs quan, per exemple, són la una del migdia a Barcelona, poden ser les
7 del matí a Nova York. Això fa que, si viatgem de Barcelona a Nova York, ens
calgui canviar l'hora del nostre rellotge. El què no està tant clar és perquè
hi ha aquestes zones horàries.

Les zones horàries són el reflex de que la Terra és esfèrica. Com que la Terra
és esfèrica, hi ha un costat il·luminat pel Sol, mentre que l'altre costat està
a l'ombra:

.. raw:: html

   <video width="100%" autoplay loop>
       <source src="../_static/Earth_rotation.mp4" type="video/mp4">
   </video>

.. container:: caption

   Vídeo mostrant com diferents zones de la Terra tenen diferents orientacions
   respecte el Sol, situat a l'esquerra del vídeo. Vídeo fet amb `Celestia
   <https://celestia.space/>`_.

Històricament, s'ha definit les 12 del migdia com el moment en el que el Sol
està en el seu punt més alt. Com que cada punt de la Terra té una orientació
lleugerament diferent respecte el Sol, l'hora de cada punt de la Terra ha de
ser necessàriament diferent. En cas contrari, es podria donar el cas que el sol
sortís a les 8 del vespre o que es pongués a les 10 del matí.

El temps universal coordinat (UTC)
----------------------------------

Les diferents zones horàries són només una petita molèstia a l'hora de viatjar,
però sol ser un tema rellevant a l'hora de comunicar-nos amb altres persones o
ordinadors distribuïts per tot el món. Per tal de fer coincidir les marques de
temps de tots els ordinadors del món, es sol fer servir el temps d'una de les
zones horàries. La zona horària de referència és, per motius històrics, la zona
horària de Greenwich (a Gran Bretanya) a l'hivern i es coneix amb el nom de
**temps universal coordinat (UTC)**. Aquesta escala de temps està àmpliament
utilitzada, ja que els diferents països defineixen l'hora oficial a partir
d'ella, tot afegint o restant les zones horàries corresponents i, en alguns
països, l'horari d'estiu (inclosa Gran Bretanya). D'aquesta manera, tots els
llocs del mateix país tenen la mateixa hora i, a l'anar d'un país a un altre,
només cal canviar les hores (els minuts i els segons continuen sent els
mateixos).

Fins ara, he explicat com es determina l'hora dels nostres rellotges, però no
he explicat com es determina el temps universal coordinat. Idealment, es podria
definir el temps UTC de manera que el Sol trigués 24 hores exactes (86400
segons) a passar dos cops per sobre del mateix punt de la Terra. Ni una dècima
més, ni una dècima menys. La Terra, però, no és una esfera perfecta que giri
totalment aliena als fenòmens que tenen lloc al seu voltant. El Sol, la Lluna i
les marees, el desgel dels pols a l'estiu, els terratrèmols i tots els fenòmens
que impliquen un moviment de massa tenen un efecte sobre l'orientació de la
Terra. Així doncs, si un dia tingués sempre 86400 segons exactes, però la
durada del dia canviés, la durada un segon podria dependre de qualsevol dels
fenòmens que afecten a la rotació de la Terra.

El temps atòmic internacional (TAI)
-----------------------------------

L'arribada dels rellotges atòmics va proporcionar una manera de definir una
escala de temps estable, permetent crear una definició de segon sòlida. Així
doncs, al 1968, es va definir que `un segon és el temps que necessita un
electró per realitzar 9.192.631.770 transicions d'energia en un àtom de cesi
<https://www.nist.gov/si-redefinition/second-introduction>`_. Al 1997, es va
ampliar la definició per precisar que `l'àtom de cesi ha d'estar en repòs
<https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication330e2008.pdf>`_.
Hi ha dos punts que voldria destacar en aquesta definició:

* El primer punt és que el segon es defineixi per un àtom en repòs. Tal i com prediu la teoria de la relativitat d'Einstein, el temps transcorre a ritmes diferents en funció de la velocitat relativa a la que es mouen dos observadors. Així doncs, s'ha observat que rellotges movent-se a velocitats diferents (per exemple, `en satèl·lits <https://www.astronomy.ohio-state.edu/pogge.1/Ast162/Unit5/gps.html>`_) mesuren el temps de manera diferent.

* El segon punt rellevat és el nombre de transicions que defineixen un segon. Perquè no es va definir el segon com el temps necessari per fer 9 mil milions de transicions? Hauria sigut un valor molt més fàcil de recordar i pràcticament no hi hauria hagut cap diferència (menys d'un 3%). El motiu és que si un dia UTC havia de continuar tenint 86400 segons, es va determinar que calien aquest nombre de transicions cada segon.

.. update:: 30 octubre de 2021

   S'han actualitzat els enllaços a la definició de segon. També s'ha modificat
   lleugerament el text per explicar millor la correcció relativista i per
   precisar que la definició de segon es va modificar al 1997.

Una definició de segon estable, que no depengui de fenòmens externs, permet
definir un dia estable, que duri sempre 86400 segons. Aquestes noves
definicions van donar lloc a una nova escala de temps, el **temps atòmic
internacional (TAI)**. És important ressaltar que aquesta escala de temps no
depèn de la orientació de la Terra.

Els segons intercalars
----------------------

En la majoria de casos, un dia UTC i un dia TAI duren exactament el mateix:
86400 segons. Però, com ja he comentat anteriorment, la Terra no gira de manera
perfectament constant. En especial, la Terra gira cada cop més lentament degut
a que la gravetat de la Lluna l'està frenant, a través de les marees. A mesura
que passa el temps, si els temps UTC i TAI continuessin sent els mateixos, el
temps UTC ja no reflectiria l'orientació de la Terra. Així doncs, de tant en
tant, cal fer algunes correccions al temps UTC per mantenir-lo d'acord amb la
orientació de la Terra.

Quan l'hora definida per l'orientació real de la Terra (anomenada temps UT1) es
desvia del temps UTC més de 0.5 segons, es resta un segon sencer al temps UTC,
tot introduint un segon extra a les 12 de la nit (al 31 de juny o al 31 de
desembre). Això és el què va passar la nit del 31 de desembre de 2016 a l'1 de
gener de 2017, tot fent que les 23:59:60 fos un valor vàlid.

.. bokeh-plot:: _plots/time_diffs_ca.py
   :source-position: none

.. container:: caption

   Diferència de temps UT1-TAI i UTC-TAI en funció de la data. Cada esglaó a la
   línia blava correspon a un segon intercalar.

El segon intercalar fa que el temps UTC, en el qual es basen la majoria
d'ordinadors, no es pugui considerar com una cosa constant, on el dia sempre
dura 86400 segons i un minut sempre dura 60 segons. Hi ha moments, com el
passat 31 de desembre de 2016, en els que un minut dura 61 segons. Aquest fet
s'ignora en la major part del programari i `ha provocat nombrosos errors en el
passat
<https://en.wikipedia.org/wiki/Leap_second#Issues_created_by_insertion_(or_removal)_of_leap_seconds>`_,
fins i tot en grans multinacionals. Tot i que hi ha propostes per abolir el
segon intercalar tot modificant la definició de UTC, la solució podria passar
per que els ordinadors fessin servir el temps TAI per sincronitzar els seus
rellotges, en lloc del temps UTC. Però això potser ho comento en una altra
ocasió. 
