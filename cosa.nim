import nimib, nimislides
import my
import agenda

template slideQuesta* =
  slide(slideOptions(iframeBackground="questa.html")):
    discard


when isMainModule:
  myInit("cosa")
  agendaSlide(1)
  slideQuesta
  nbSave
