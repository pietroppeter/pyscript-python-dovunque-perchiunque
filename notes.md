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
- minimal draft (from agenda)
    - titleSlide [x]
    - agendaSlide(s) [x]
    - cosa
      - module with agendaSlide(cosa) [x]
      - this page [x]
        - thanks chatgpt: https://chatgpt.com/share/55ea5e96-6106-47f7-99d2-5a06788f9125
      - slideThis [x]
      - cosa: versione (italiana) [questa, this, chista]
      - codice della cosa
        - html
        - javascript
      - codice di chista
        - pyscript
        - dipendenza (e backend)
      - chista: versione in pyscript
    - perché
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
      - more than that (async...)
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

- post on linkedin
- nice to haves
    - animation on perché python

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
