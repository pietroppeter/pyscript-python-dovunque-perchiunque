import nimib, nimislides
import my
import agenda

template slideThis* =
  slide(slideOptions(iframeBackground="this.html")):
    discard


when isMainModule:
  myInit("cosa")
  agendaSlide(1)
  slideThis
  nbSave
