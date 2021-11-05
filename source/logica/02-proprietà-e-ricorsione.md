---
title: Logica
created: '2021-11-02T19:57:30.876Z'
modified: '2021-11-03T14:25:56.029Z'
header-includes:
  - \usepackage{mathtools}
---

# Proprietà e ricorsione

Sia $A$ un insieme e $P$ un suo sottoinsieme: l'elemento $a\in{A}$ soddisfa la proprietà $P$ se e solamente se $a\in{P}$. In altre parole una proprietà è l'insieme degli elementi che rispettano una determinata condizione.

Per esempio, una proprietà su $\mathbb{N}$ potrebbe essere: $P = \{n\;|\;n \in{\mathbb{N}},n>0\}$ dove $P\subseteq{\mathbb{N}}$, infatti:

- $P(1)$ vale perché $1\in{P}$
- $P(0)$ non vale perché $0\notin{P}$

Per dimostrare una proprietà su tutte le proposizioni, necessitiamo di una definizione dell'insieme che le contiene.

## Funzioni ricorsive e non

Siano $A,B$ due insiemi e $f\subseteq{A\times{B}}$, $f$ viene chiamata funzione se e solamente se per ogni elemento del dominio $A$, esiste ed è unico un elemento del codominio $B$, tale che la coppia $(a,b)$ appartenga ad $f$, cioè:

$$
\forall{a}\in{A},\;\exists!\;b\in{B},\;(a,b)\in{f}
$$

Per cui si scrive:

- $f(a)=b$ quando $(a,b)\in{f}$
- $f:A\rightarrow{B}$ quando $f\subseteq{A\times{B}}$

###### Nota bene

> Una funzione è definita in modo ricorsivo se è definita dal valore sui propri elementi.

Per esempio una funzione ricorsiva può essere quella che ad ogni proposizione, assegna il numero delle sue parentesi, definita come

$$\pi:PROP\rightarrow{\mathbb{N}}$$

I valori che assume sono:

- $\pi(\alpha)=0$ per $\alpha\in{AT}$

- $\pi(\neg\alpha)=2+\pi(\alpha)$

- $\begin{drcases}\pi(\alpha\land\beta)&\\\pi(\alpha\lor\beta)&\\\pi(\alpha\rightarrow\beta)\end{drcases}=2+\pi(\alpha)+\pi(\beta)$

## Insiemi di proposizioni

Viene chiamato $PROP$ il più piccolo insieme $X$ di stringhe, tale che:

1. $\bot\in{PROP}$

2. $p\in{PROP}$ per $p$ simbolo proposizionale

3. Se $\alpha,\beta\in{PROP}$ allora: $\begin{dcases}(\alpha\land\beta)&\\(\alpha\lor\beta)&\\(\neg\alpha)&\\(\alpha\rightarrow\beta)&\end{dcases}\in{PROP}$

Viene invece chiamato $AT$ l'insieme delle proposizioni atomiche, cioè quelle che non possono essere semplificate ulteriormente. Per questo possiamo affermare che $AT\subset{PROP}$.

### Principio di induzione su $PROP$

Per poter determinare se una proprietà vale per tutte le proposizioni, si utilizza il principio di induzione sull'insieme $PROP$.

Siano $P\subseteq{PROP}$ e $\alpha,\beta$ due proposizioni qualsiasi, possiamo affermare che $\forall{\phi}\in{PROP}$ vale $P(\phi)$ se e solamente se:

1. Vale $P(\alpha)$ per $\alpha\in{AT}$
2. Ipotizzando valgano $P(\alpha), P(\beta)$, allora valgono anche $P(\alpha\land\beta)$, $P(\alpha\lor\beta)$, $P(\neg\alpha)$ e $P(\alpha\rightarrow\beta)$

###### Nota bene

> Se la proprietà $P\subseteq{PROP}$ vale ***per ogni*** elemento di $PROP$, allora significa che $P$ è $PROP$ stesso.

### Dimostrazione

Vogliamo dimostrare che ogni proposizione, possiede un numero pari di parentesi, in altre parole $\forall{\alpha}\in{PROP},\;P(\alpha)\iff\pi(\alpha)\text{ è pari}$.

Utilizzando il principio di induzione, applicato all'insieme $PROP$:

1. $P(\alpha)$ vale per $\alpha\in{AT}$?
   
$$
\alpha\in{AT}\implies\pi(\alpha)=0
$$

2. Ipotizzando che valga $P(\alpha)$, allora vale anche $P(\neg\alpha)$?
   
$$
\pi(\neg\alpha)=2+\pi(\alpha)=2
$$

3. Ipotizzando che valgano $P(\alpha),P(\beta)$, allora valgono anche $P(\alpha\land\beta)$, $P(\alpha\lor\beta)$ e $P(\alpha\rightarrow\beta)$?

$$
\begin{drcases}P(\alpha\land\beta)&\\P(\alpha\lor\beta)&\\P(\alpha\rightarrow\beta)\end{drcases}=2+\pi(\alpha)+\pi(\beta)=2
$$

Conclusione: $\forall{\phi}\in{PROP},\;\pi(\phi)$ è pari quindi $\forall{\phi}\in{PROP},\;P(\phi)$ è verificata.

## Funzioni notevoli

### Insieme delle sottoproposizioni

La funzione ricorsiva $Sub$ associa ad ogni proposizione, l'insieme delle proposizioni che la compongono, cioè $Sub:PROP\rightarrow{2^{PROP}}$. I valori che assume $Sub$ sono:

- $Sub(\phi)=\{\phi\}$ per $\phi\in{AT}$

- $Sub(\neg\phi)=\{(\neg\phi)\}\;\cup\;{Sub(\phi)}$

- $\begin{drcases}Sub(\alpha\land\beta)&\\Sub(\alpha\lor\beta)&\\Sub(\alpha\rightarrow\beta)\end{drcases}=\{\phi*\psi\}\;\cup\;Sub(\phi)\;\cup\;Sub(\psi)$

dove $*$ è un connettivo tra $\{\land,\lor,\rightarrow\}$. 

###### Nota bene

> L'insieme $2^A$ si chiama *Insieme potenza* o *delle parti* di $A$.

### Rango di una proposizione

La funzione ricorsiva $r$ associa ad ogni proposizione il proprio rango o complessità, cioè $r:PROP\rightarrow{\mathbb{N}}$. I valori che assume sono:

- $r(\phi)=0$ per $\phi\in{AT}$

- $r(\neg\phi)=1+r(\phi)$

- $\begin{drcases}r(\alpha\land\beta)&\\r(\alpha\lor\beta)&\\r(\alpha\rightarrow\beta)\end{drcases}=1+\text{max}(r(\phi),r(\psi))$

## Teorema di ricorsione primitiva

Siano $A\subseteq{PROP}$ un insieme e $*$ un connettivo tra $\{\land,\lor,\rightarrow\}$. Supponendo di avere delle funzioni come le seguenti:

- $H_{at}:AT\rightarrow{A}$
- $H_{\neg}:A\rightarrow{A}$
- $H_{*}:A\times{A}\rightarrow{A}$

Esiste ed è unica una funzione $F:PROP\rightarrow{A}$ tale che:

- $F(\phi)=H_{at}(\phi)$ per $\phi\in{AT}$
- $F(\lnot\phi)=H_{\neg}(\;F(\phi)\;)$
- $F(\phi*\psi)=H_{*}(\;F(\phi),F(\psi)\;)$
