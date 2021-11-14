# Notes

Repository per gli appunti delle lezioni UniVR.

## Contenuto

All'interno del repository si trovano nella cartella `source/` i sorgenti in formato [*Markdown*][1] con alcune espressioni in *LaTeX*, mentre nella cartella `output/` i file PDF convertiti. 

### Nomi dei file

Gli appunti hanno un nome del tipo: `[numero]-[argomento].md`, dove:

- Il numero, precede e detta l'ordine delle lezioni
- Tutto il resto indica l'argomento.

> È **caldamente** consigliato non utilizzare spazi o maiuscole, ma solo segni meno e lettere minuscole per facilitare la condivisione degli appunti.

## Correzioni

Per segnalare eventuali errori o miglioramenti utilizzare la [*sezione problemi*][2] di GitHub.

### Contributi

Per contribuire è consigliato un ambiente [*Ubuntu-based*][3], come editor [*VS Code*][4] con installato l'estensione chiamata "*Markdown All in One*" e "*Latex Workshop*".

### Dipendenze

Per iniziare a scrivere sono necessari i seguenti pacchetti:

- `texlive`
- `texlive-science`
- `texlive-latex-extra`
- `python3`
- `python3-pip`

```bash
sudo apt install curl texlive texlive-science texlive-latex-extra python3 python3-pip -y
```

Ulteriori dipendenze:

- `pandoc`
- `nvm`
- `npm`
- `nodejs`

#### Pandoc

*Pandoc* è il convertitore di formato utilizzato nella conversione dei documenti, [*per installarlo consultare questo collegamento*][5] e, al termine del download, eseguire:

```bash
sudo apt install -f ./pandoc-[version]-[arch].deb

# Installazione dei filtri
sudo pip install pandoc-eqnos pandoc-fignos pandoc-tablenos pandoc-secnos
```

#### Node JS

Per installare *Node JS* è consigliato seguire le indicazioni del progetto [*Node Version Manager*][6], ma in generale dovrebbe essere sufficiente eseguire:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Aggiornamento dei comandi Bash
source ~/.bashrc

# Installazione di NodeJS ed NPM
nvm install node
```

### Conversione

Al momento della conversione da file *Markdown* a *PDF* si possono utilizzare due differenti strategie:

- Traduzione manuale con *Make*
- Traduzione automatica con *Node JS*

Per la traduzione di un singolo file, soprattutto **durante la stesura** dello stesso, è consigliato eseguire lo script `build.js`:

```bash
node build.js
```

Mentre per una traduzione completa di tutti i file è consigliato lanciare il comando:

```bash
make all
```

In caso di necessità, per **eliminare** tutti i file *PDF*, è sufficiente il comando:

```bash
make clean
```

### Docker

Nel progetto si trova l'immagine in cui è presente tutto il necessario per scrivere i sorgenti e convertirli con *Pandoc*.

```bash
docker build -t notes-dev .

# Conversione automatica
docker run -d -v ${PWD}:/data notes-dev node build.js

# Conversione manuale
docker run -d -v ${PWD}:/data notes-dev make [path-to-file].pdf
```

[1]: https://www.markdownguide.org/
[2]: https://www.github.com/Kyllen02/appunti/issues
[3]: https://www.ubuntu.com/
[4]: https://www.code.visualstudio.com/
[5]: https://www.github.com/jgm/pandoc/releases/tag/2.16.1
[6]: https://www.github.com/nvm-sh/nvm