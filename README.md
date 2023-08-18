# Sillabusz


A környezet összeállítása. Az előadás Python 3.10-et használ, a `requirements.txt` fájlban megadott csomagokkal. Az előadás fóliák lefuttathatók az abban levő csomagok telepítése után. Ehhez tehát szükséges:
* Egy Python 3.10 környezet létrehozása. Ez történhet `venv`-vel, de az egyszerűség kedvéért egy Anacondával könnyen lehet megadott Python verziójú környezetet létrehozni. Pl. `conda create -n python-course python=3.10` a parancssorból, vagy akár az Anaconda Navigator GUI segítségével is lehet környezetet létrehozni.
* A létrehozott környezetben telepítsük a szükséges csomagokat: `pip install -r requirements.txt`

A mellékelt Dockerfile is azt a környezetet hozza létre, amit az előadás használ. Az előadás fóliák dockerből való futtatásához az alábbi parancsokat lehet használni.

```bash
docker build -t python-course -f Dockerfile .
```

```bash
docker run -p 8080:8080 python-course
```

## 1. óra

A Python nyelvről röviden, a szokásos buzzword-ok felsorolása: erősen típusos, dinamikus, (fordított és) interpretált, több programozási paradigmát támogató, garbage collected nyelv.

Az utóbbi években az egyik legnépszerűbb programozási nyelvvé vált. Könnyen tanulható, gyorsan lehet kódot írni benne, nagy felhasználóbázisa van, sok könyvtár, rengeteg online tutorial, kurzus, papír alapú könyv elérhető, az adatelemzés, gépi tanulás, deep learning lingua franca-ja (Azaz a gyakran C-ben, C++-ban írt kód köré tett Python wrapper kód teszi tömegek számára elérhetővé ezeket a területeket).

A Python REPL, Jupyter notebook, "Hello, world!", változók, aritmetikai műveletek, nevezéktan.

## 2. óra

Logikai értékek, összehasonlító operátorok, `a == b` vs. `a is b`, if-elif-else, értékadás, if-else-kifejezés, sztringek. Metódusok sztringeken, immutable adatszerkezet, indexelés. Range, for-ciklus, while-ciklus, (break, continue).


## 3. óra

Függvények, függvényparaméterek átadása pozíció és név alapján, visszatérési érték. Rekurzív függvények, lambda-függvény. A Python lista. Egy lista logikai értéke, hogyan tesszük feltételbe, hogy egy lista (string, tuple, stb.) üres-e? Lista metódusok, append és pop, insert, remove, index, ezek műveletigénye informálisan.


## 4. óra

List comprehension. További alapvető adatszekezetek: tuple, dictionary, set, frozenset. Dict- és set-comprehension. A rozmár-operátor `:=`, a collections könyvtár néhány adatszerkezete: defaultdict, namedtuple, Counter.

Kivételek kezelése.


## 5. óra

Szöveges fájlok beolvasása. Néhány algoritmustervezési módszer a Fibonacci-számok példáján keresztül: rekurzió, memoization (cache-elés), dinamikus programozás(-szerűség), brute-force. A
`2-SUM` feladat burute-force megoldása. Mese programozási paradigmákról, bevezetés az OOP-be. Osztály, példány. Osztályok
alkalmazása: 1) állapotot akarunk fenntartani, pl. bankszámla vezetés, 2) adatot tárolunk és manipulálunk úgy, hogy a részleteket elrejtjük a felhasználó elől (encapsulation, abstraction).


## 6. óra

A verem (stack) absztrakt adattípus leírása és egy lehetséges implementációja. Operátor túlterhelés, a
beépített Python függvények és operátorok kiterjesztése általunk definiált adatszerkezetre, például a racionális számokra.

További fejezetek az OOP-ből, egyéb mágikus osztálymetódusok: rendezés, a callable osztály.


### 7. óra

OOP: öröklődés (csak érintőlegesen), a Python sztenderd könyvtár néhány modulja.

A funkcionális programozási paradigma, `map` és `filter`. Generátorok, `next` és `yield`. Az itertools könyvtár. Végtelen sorozatok kezelése. Imperatív vs. funkcionális stílus.


### 8. óra

A numpy könyvár alapjai. Vektorok és mátrixok készítése, indexelés. Vektor és mátrixműveletek, mátrix determináns, inverz, lineáris egyenletrendszerek megoldása. Egyszerű matplotlib ábrák készítése.


### 9. óra

A pandas könyvtár, egy táblázatos adatsor elemzése és ábrák készítése. A föld népességének változása, illetve egy időjárási adatokat tartalmazó adat elemzése.


### 10. órától

Algoritmikus gondolkodás. Számelméleti algoritmusok, prímszámok, oszthatóság, legnagyobb közös osztó, számelméleti függvények, mátrixok determinánsa, kifejtési tétel. Gráfelméleti algoritmusok: gráfok bejárása, szélességi keresés, összefüggő komponensek. A sor (queue), mint absztrakt adattípus. Egy valós példa: repülőjáratok, legkevesebb átszállás városok között, legrövidebb út városok között, Dijkstra algoritmus.
