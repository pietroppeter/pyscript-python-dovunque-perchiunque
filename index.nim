import nimib, nimislides
import my
import agenda, cosa

template titleSlide* =
  slide:
    nbText """
## **PyScript** 🐰

🐍 Python _dovunque_ e _perchiunque_
"""
    reference "[github.com/pietroppeter/pyscript-python-dovunque-perchiunque](https://github.com/pietroppeter/pyscript-python-dovunque-perchiunque)"

template babySlide* =
  slide nbText """
> If the **Web** and **Python** had a baby,  
> you'd get PyScript

-- [docs.pyscript.net](https://docs.pyscript.net/2024.8.2/user-guide/what/)
"""

template howSlide* =
  slide nbText """
## ⚙️ come funziona?

- WASM
- backends:
  - pyodide
  - [micropython](https://micropython.org/) (<200ms)
- [polyscript](https://github.com/pyscript/polyscript)
"""

# github image logo link taken from: https://github.com/logos
const githubLogoUrl* = "https://github.githubassets.com/assets/GitHub-Mark-ea2971cee799.png"

template githubDemoSlide* =
  slide nbText """
## 🧑‍💻 Demo (Github Pages)

<img src="$1" alt="GitHub logo" width="200"/>

""" % [githubLogoUrl]

template resourcesSlide* =
  slide nbText """
## 📚 risorse

- [intervista pythonista a Fabio](https://www.youtube.com/watch?v=YICaByu83LA&list=PLI39UsD2FrxXZlqQv1JLrM8v0jpbMolfN&index=36) Pliger (Anaconda)
- [milano.python.it](https://milano.python.it) meetup con Andrea Giammarchi e Nicholas Tollervey
  ["PyScript: Python on the browser and beyond"](https://www.youtube.com/watch?v=yQIvNcqs0sA&list=PLI39UsD2FrxVgehBJZ68JDzm3u6xJD22l&index=2)
- [pyscript.net](https://pyscript.net) (oss project)
- [pyscript.com](https://pyscript.com) (free hosting)
- [discord](https://discord.gg/HxvBtukrg2)
- [youtube.com/@PyScriptTV](https://www.youtube.com/@PyScriptTV/)
- [github.com/pyscript](https://github.com/pyscript)

"""

template thanksSlide* =
  slide nbText """
## 🙇‍♂️ Grazie

- 👨‍👩‍👧 **Pietro P Peter**longo ([github.com/pietroppeter](https://github.com/pietroppeter))
- 🧑‍💼 Data Scientist @ [agilelab.it](https://www.agilelab.it/)
- 🐍 Python/PyData Milano
- 🐙 [recurse.com](https://www.recurse.com/) (Recurse Center)
- 👑 [Nim for Pythonistas](https://www.youtube.com/watch?v=yPMudqyKtLQ), PyCon Italy 2024

"""

template slideIdeas* =
  slide nbText """
## 💡 Che ci faccio?

1. cose frontend (🔵🟩🔺...)
2. contribuire open source 🙋🏼‍♀️
3. imparo cose web (tech e cultura) 🌍
"""

template slideP5js* =
  slide(slideOptions(iframeBackground="https://p5js.org/")):
    discard

template slideCreativeCodinglinks* =
  slide nbText """
## 🌸 Creative Coding

- [github.com/nickmcintyre/proceso](https://github.com/nickmcintyre/proceso) (p5js for pyscript)
- [Okazzu (artist) @ Open Processing](https://openprocessing.org/user/128718?view=sketches&o=32)
- [io che traduco (malamente) sketch di Okazzu](https://github.com/pietroppeter/rc23winter1)
"""

when isMainModule:
  myInit("index")
  titleSlide
  slide:
    cosa.all
  babySlide # usare per motivare bene il perché
  howSlide
  githubDemoSlide # need to test the demo!
  slide:
    slideIdeas
    slideP5js
    slideCreativeCodinglinks
  resourcesSlide
  thanksSlide
  nbSave
