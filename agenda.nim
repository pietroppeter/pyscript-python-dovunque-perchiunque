import std / strutils
import nimib, nimislides, my
export strutils

const
  cosa* = "cosa"
  perché* = "perché"
  come* = "come"
  persone* = "persone"
  che* = "che"
  chi* = "chi"
  tutto* = [cosa, perché, come, persone, che, chi]

func emphArray*(a: openArray[string], i: int): seq[string] =
  for j, v in a:
    if (j + 1) == i:
      result.add "**" & v & "**"
    else:
      result.add v  

# todo: refactor to use generic array and put in my
template agendaSlide*(i = 0) =
  slide:
    nbText """
1. $1
2. $2
3. $3
4. $4
5. $5
""" % tutto.emphArray(i)
# 6. $6 (chi hidden)

when isMainModule:
  myInit("agenda")
  slide:
    agendaSlide
    agendaSlide(1)
    agendaSlide(2)
    agendaSlide(3)
    agendaSlide(4)
    agendaSlide(5)
  nbSave