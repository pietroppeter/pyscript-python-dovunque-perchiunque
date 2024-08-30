import nimib, nimislides
import my
import agenda

template slideQuesta* =
  slide(slideOptions(iframeBackground="questa.html")):
    discard

template slideChista* =
  slide(slideOptions(iframeBackground="chista.html")):
    discard

template slideHtml* =
  slide nbText """
```html
<!DOCTYPE html>
<head>
    <title>Questa è una WebApp</title>
    <style>
      ...
    </style>
</head>
<body>
    <button id="cliccami">questa</button>
    <script src="./main.js"></script>
</body>
</html>
```
"""

template slidePyHtml* =
  slide nbText """
```html
<!DOCTYPE html>
<head>
    <title>Chista è una PyWebApp</title>
    <style>
      ...
    </style>
    <script type="module" src="https://pyscript.net/releases/2024.8.2/core.js"></script>
</head>
<body>
    <button id="bottone" mpy-click="cambia">questa</button>
    <script type="mpy" src="./main.py"></script>
</body>
</html>
```
"""

template slideJavascript* =
  slide nbText """
`main.js`

```js
$1
```
""" % "main.js".readFile

template slidePyScript* =
  slide nbText """
`main.py`

```py
$1
```
""" % "main.py".readFile

template enterPyScript* =
  slide nbText "# 🐰"

template all* =
  slideQuesta
  slideHtml
  slideJavascript

  enterPyScript
  
  slidePyScript
  slidePyHtml
  slideChista

when isMainModule:
  myInit("cosa")
  agendaSlide(1)
  all
  nbSave
