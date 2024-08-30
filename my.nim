import nimib, nimislides

# small text
template addNbTextSmall* =
  nb.partials["nbTextSmall"] = "<small>" & nb.partials["nbText"] & "</small>"
  nb.renderPlans["nbTextSmall"] = nb.renderPlans["nbText"]

template myInit*(sourceFileRel = "my.nim") =
  nbInit(thisFileRel=sourceFileRel, theme=revealTheme)
  setSlidesTheme(Simple)
  addNbTextSmall
  nbRawHtml """
<style>

</style>
"""
