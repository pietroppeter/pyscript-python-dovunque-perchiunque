import nimib, nimislides
import my
import agenda

template slideQuesta* =
  slide(slideOptions(iframeBackground="questa.html")):
    discard

template slideHtml* =
  slide nbText """
```html
<!DOCTYPE html>
<head>
    <title>Questa è una App</title>
    <style>
      ...
    </style>
</head>
<body>
    <button id="cliccami">questa</button>
    <script>
      ...
    </script>
</body>
</html>
```
"""

template slideJavascript* =
  slide nbText """
```html
<script>
  const texts = ["questa", "this"];
  let currentIndex = 0;

  const button = document.getElementById("cliccami");

  button.addEventListener("click", () => {
      currentIndex = (currentIndex + 1) % texts.length;
      button.textContent = texts[currentIndex];
  });
</script>
```
"""

template slidePyScript* =
  slide nbText """
```html
<script>
  const texts = ["questa", "this", "chista"];
  let currentIndex = 0;

  const button = document.getElementById("cliccami");

  button.addEventListener("click", () => {
      currentIndex = (currentIndex + 1) % texts.length;
      button.textContent = texts[currentIndex];
  });
</script>
```
"""

when isMainModule:
  myInit("cosa")
  slideJavascript
  slideHtml
  agendaSlide(1)
  slideQuesta
  nbSave
