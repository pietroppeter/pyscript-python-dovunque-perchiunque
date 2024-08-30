from pyscript import document

def cambia(event):
    bottone = document.querySelector("#bottone")
    testo = bottone.innerText
    bottone.innerText = cicla(testo)

def cicla(testo: str) -> str:
    if testo == "questa":
        return "this"
    elif testo == "this":
        return "chistaccà"
    else:
        return "questa"
