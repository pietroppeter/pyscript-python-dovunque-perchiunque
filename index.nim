import nimib, nimislides
import my

template titleSlide* =
  slide:
    nbText "assabbinidica"

template agendaSlide* =
  discard

when isMainModule:
  myInit("index")
  titleSlide
  agendaSlide
  nbSave
