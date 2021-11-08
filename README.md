# Appunti

Repository per gli appunti delle lezioni.

## Contenuto

All'interno del repository si trovano i documenti in formato [*Markdown*][1] con alcune espressioni in *LaTeX* nella cartella `source/`, mentre i pdf compilati nella cartella `output/`. 

### Nomi dei file

Gli appunti hanno un nome del tipo: `{numero}-{argomento}.md`, dove:

- Il numero, precede e detta l'ordine delle lezioni
- Tutto il resto indica l'argomento

Importante non utilizzare spazi o maiuscole come separatori, ma solo `-`. **È consigliabile seguire questa notazione per facilitare la condivisione degli appunti**.

## Correzioni

Per segnalare eventuali errori o miglioramenti utilizzare la [*sezione problemi*][2] di GitHub.

## Contributi

Per contribuire è consigliato un ambiente **Ubuntu-based**, come editor **VS Code** con installato l'estensione chiamata "*Markdown All in One*".

### Dipendenze

Per iniziare a scrivere sono necessari i seguenti pacchetti:

- `texlive`
- `texlive-science`
- `texlive-latex-extra`
- `python3`
- `python3-pip`

Per installarli è sufficiente il seguente comando:

```sh
sudo apt install texlive texlive-science texlive-latex-extra python3 python3-pip -y
```

#### Pandoc

Pandoc è il convertitore di formato utilizzato nella conversione dei documenti, per installarlo consultare [*questo collegamento*][3] e, al termine del download, eseguire:


```sh
sudo apt install -f ./pandoc-[version]-[arch].deb
```

Vengono utilizzate anche delle estensioni di Pandoc, per poterle utilizzare eseguire il seguente comando:

```sh
sudo pip install pandoc-eqnos pandoc-fignos pandoc-tablenos
```

### Conversione

Al momento della conversione da file *Markdown* a *PDF* si possono utilizzare due differenti strategie:

- Tradurre un singolo file
- Tradurre tutti i file

#### File singolo

Per convertire è un singolo file **importante specificare l'estensione PDF** ed eseguire:

```sh
make source/{nome-corso}/{numero}-{argomento}.pdf
```

#### Generale

Per una conversione generale è sufficiente eseguire:

```sh
make
```

[1]: https://www.markdownguide.org/
[2]: https://www.github.com/Kyllen02/appunti/issues
[3]: https://www.github.com/jgm/pandoc/releases/tag/2.16.1