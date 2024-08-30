// cicla su questi testi
const texts = ["questa", "this"];
let currentIndex = 0;

// prendi il bottone
const button = document.getElementById("cliccami");

// aggiungi event listener per evento click
button.addEventListener("click", () => {
    // aggiorna indice
    currentIndex = (currentIndex + 1) % texts.length;
    // aggiorna testo bottone
    button.textContent = texts[currentIndex];
});
