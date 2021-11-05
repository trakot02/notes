# Appunti

Repository per gli appunti delle lezioni.

## Contenuto

All'interno del repository si trovano le note nella cartella `source/` in formato [*Markdown*][1] con alcune espressioni in formato [*LaTeX*][2].

Gli appunti hanno un nome del tipo: `01-argomento-lezione.md`, dove:

- Il numero che precede detta l'ordine delle lezioni
- Tutto il resto indica l'argomento

Si può notare come non sono presenti maiuscole e spazi ma solo `-` come separatori tra le parole. **È consigliabile seguire questa notazione per facilitare la condivisione degli appunti**.

## Revisione

Per segnalare eventuali errori o miglioramenti utilizzare la [*sezione problemi*][3] di GitHub.

## Contributi

Per contribuire è consigliato un ambiente **Ubuntu-based** e **VS Code** con installata l'estensione chiamata `Markdown All in One` di Yu Zhang.

Per preparare l'ambiente occorre installare questi pacchetti:

```sh
sudo apt-get install pandoc texlive texlive-latex-extra texlive-science -y
```

Al momento della conversione da file *markdown* a *PDF* digitare il seguente comando:

```sh
pandoc source/[filename].md -o output/[filename].pdf
```

[1]: https://www.markdownguide.org/
[2]: https://www.latex-project.org/about/
[3]: https://www.github.com/Kyllen02/appunti/issues