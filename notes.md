## sprint aug 30

- nim, nimib, nimislides env setup [x]
  - with nimble this time! [x]
  - add nimib and check it works [x]
    - issue: cannot open file nimib
      - workaround: add manually path for each dependency! [x]
      - create an issue for this [x]
  - add nimislides and check it works [x]
- nimislides custom setup (from diventa-avventore-del-codice) [x]
    - basic index.nim and my.nim (renamed from nbex) [x]
        - (why `import nimib except toJson`?)
- uv init [x]
    - need python webserver for pyscript [x]
        - (only if I use the main.py?)
- how to see slides with python web server [x]
- minimal draft (from agenda)
    - titleSlide [x]
    - cosa [x]
      - module with agendaSlide(cosa) [x]
      - this page [x]
        - thanks chatgpt: https://chatgpt.com/share/55ea5e96-6106-47f7-99d2-5a06788f9125
      - slideThis [x]
        - rename to slideQuesta e traduci [x]
      - codice della cosa
        - slideHtml [x]
        - javascript [x]
      - codice di chista [x]
        - pyscript
          - da chatgpt [x]
          - fix it (and use mpython) [x]
          - show it [x]
        - dipendenza (e backend) [x]
      - chista: versione in pyscript [x]
    - perché: single quoteSlide [x]
    - come (wasm, pyodide, micropython, polyscript) [x]
    - github (pages) demo?
      - slide [x]
      - test demo
      - remove repo
      - retry demo?
    - ideas (che ci faccio?) [x]
      - slideIdeas [x]
        - 1 cose frontend, ce n'é di tutte le forme e colori; wordle?
        - 2 contribuire open source
        - 3 imparare cose web e farsi influenzare da altre culture
      - esempio di creative coding con p5js/proceso? [x]
    - risorse [x]
      - aggiungo anche talk su streamlit?
    - grazie [x]
- chista -> chistacca [x]
- deploy on github pages

not minimal (kept for a later version, to be submitted at PyCon Italy):
- content
    - agendaSlide(s) [x]
        - aggiungi pyscript come titoletto
        - migliora testo agenda
    - more perché
        - python
            - linguaggio, ecosistema
            - progetto, comunità
            - valori: Accessible, Giocosa, Inclusiva
        - web
            - dovunque (link australiano)
            - perchiunque (99%, barefoot?)
            - e anche da web verso python! (vedi dopo creative coding)
    - come
      - wasm
      - backends
        - pyodide
        - micropython (<200ms, <200kb compresso)
      - more than that (async...) polyscript
    - persone
        - peter: anaconda, pydata/numfocus
        - fabio: intervista pythonista
        - ntoll: educator
        - andrea: webreflection (link to pymi meetup)
    - che
      - modo più rapido per fare cose con codice (python)
        - github pages demo? con chista?
      - contribuire open source
      - imparare web e farsi influenzare (es. creative coding)
    - chi? (o meglio grazie)
    	- agilelab.it (hola), milano.python.it, recurse.it (nim for pythonistas)

study pyscript:
- https://docs.pyscript.net/2024.8.2/
- documentation has improved a lot!

- post on linkedin
- nice to haves
    - animation on perché python
    - animations sul codice

agenda:
- cos'è
	- bottone: questa -> this -> chista
	- codice js
	- codice pyscript
- perché
	- python
		- AGI (accessibile, giocoso, infinito)
	- pyscript
		- dovunque e perchiunque
		- link talk australiano del bee framework
- persone/storia: peter, fabio, andrea, ntoll
- come
	- wasm
	- pyodide/micropython!
	- aysnc?
- che ci faccio
	- progetti interessanti?
	- cose mie. es. github pages (che tipo di app?)
		- stato: accesso local storage?
		- (potrei fare una app per il mio parcheggio)
		- lista idee?
	- contribuire open source
	- creative coding
- chi sono?
	- agilelab, pymi, rc (nim for pythonistas)

## friction log pyscript

- documentation: arrows to go forward and back?
- link to github from docs?
- I want to start with python in a pyscript tag not with a script and separate main.py
- Home
    - mmh, scalable...
    - secure?
- for me difference with backends is one of the main things and I want micropython as default backend
- link discord più trasparente?

domanda sui backend:
- ma ora cosa succede che parte con mpy e carica in modo lazy pyodide???

offtopic:
- it would be nice to have a follow all when you hover over contributors of a project

## issue: `Error: cannot open file: nimib`

somehow with my current configuration, nimble finds nimib:

    ➜  pyscript-python-dovunque-perchiunque git:(main) ✗ nimble path nimib
    /Users/pietropeterlongo/.nimble/pkgs2/nimib-0.3.12-f905e5b5233411fc4608f27187da5726976f28ab

but nim does not

    ➜  pyscript-python-dovunque-perchiunque git:(main) ✗ nim r --nimblePath:/Users/pietropeterlongo/.nimble/ index      
    Hint: used config file '/Users/pietropeterlongo/recursing/Nim/config/nim.cfg' [Conf]
    Hint: used config file '/Users/pietropeterlongo/recursing/Nim/config/config.nims' [Conf]
    ......................................................................
    /Users/pietropeterlongo/recursing/pyscript-python-dovunque-perchiunque/index.nim(1, 8) Error: cannot open file: nimib

and even adding specific of nimblePath does not seem to work!

    ➜  pyscript-python-dovunque-perchiunque git:(main) ✗ nim r --nimblePath:/Users/pietropeterlongo/.nimble/pkgs2 index
    Hint: used config file '/Users/pietropeterlongo/recursing/Nim/config/nim.cfg' [Conf]
    Hint: used config file '/Users/pietropeterlongo/recursing/Nim/config/config.nims' [Conf]
    ......................................................................
    /Users/pietropeterlongo/recursing/pyscript-python-dovunque-perchiunque/index.nim(1, 8) Error: cannot open file: nimib
