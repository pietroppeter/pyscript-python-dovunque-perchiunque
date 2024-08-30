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

when isMainModule:
  myInit("index")
  #babySlide # perché
  #howSlide
  #resourcesSlide
  #githubDemoSlide #include?
  #thanksSlide
  titleSlide
  slide:
    cosa.all
  nbSave
