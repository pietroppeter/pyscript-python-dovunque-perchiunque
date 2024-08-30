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
    - perché
    - persone
    - come
    - che
    - chi? (o meglio grazie)
- post on linkedin
- nice to haves
    - ...

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
