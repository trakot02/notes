---
title: Numeri reali
---

\newpage

# Insieme dei reali

Supponiamo di aver costruito l'insieme dei numeri reali $\mathbb{R}$, con le familiari operazioni di addizione e moltiplicazione e la relazione d'ordine $\leq$. Supponiamo che:

$$
\mathbb{N}\subseteq{\mathbb{Z}\subseteq{\mathbb{Q}\subseteq{\mathbb{R}}}}
$$

## Proprietà dei reali

Supponiamo inoltre che le operazioni $+,\cdot$ e la relazione d'ordine $\leq$ soddisfino le usuali proprietà algebriche. Ci concentriamo su due proprietà ulteriori dei numeri reali.

### Postulato di Eudosso-Archimede

Per ogni $a\in{\mathbb{R}},b\in{\mathbb{R}}$ con $0<a<b$ esiste $n\in{\mathbb{Z}}\tc{na>b}$, cioè esisterà sempre un numero intero che moltiplicato per $a$ sia maggiore di $b$.

### Proprietà degli *intervalli inscatolati*

La proprietà degli intervalli inscatolati permette di individuare infiniti numeri reali in un intervallo di valori, quindi mostra come i numeri reali non presentano interruzioni tra loro.

*Nota bene*

> Dati $a,b\in{\mathbb{R}}$ con $a<b$ viene chiamato intervallo chiuso $[a,b]\coloneqq\{x\in{\mathbb{R}}:\;a\leq{x\leq{b}}\}$.

Date due successioni di reali:

$$
\begin{aligned}
    &a_0<a_1<a_2<a_3<\dots\\
    &b_0>b_1>b_2>b_3>\dots
\end{aligned}
$$

Tali per cui ${a_j<b_j}$ per ogni indice $j$ esiste un numero reale $c$ per cui $c\in{[a_j,b_j]},\;\forall{j}\in{\mathbb{N}}$. Per esempio, dato il numero reale $\sqrt{2}=1,41421\dots$ possiamo scrivere:

$$
\begin{matrix}
    a_0=1\;&\;b_0=1\\
    a_1=1,4\;&\;b_1=1,5\\
    a_2=1,41\;&\;b_2=1,42\\
    a_3=1,414\;&\;b_3=1,415\\
    \dots\;&\;\dots
\end{matrix}
$$

Notiamo come $\sqrt{2}$ appartiene a tutti gli intervalli $[a_j,b_j]$. Questo esempio però mostra anche che i numeri razionali $\mathbb{Q}$ non soddisfano la proprietà degli intervalli inscatolati.

La definizione degli intervalli inscatolati può essere riformulata ma necessita di ulteriori elementi.

### Maggioranti e minoranti di un insieme

Sia $S\subseteq{\mathbb{R}},b\in{\mathbb{R}}$, si dice che $b$ è un $\begin{dcases}\text{maggiorante}\\\text{minorante}\end{dcases}$ di $S$ se $\forall{x}\in{S}\begin{dcases}b\geq{x}\\b\leq{x}\end{dcases}$.

### Insiemi Limitati

Si dice che $S$ è limitato $\begin{dcases}\text{superiormente}\\\text{inferiormente}\end{dcases}$ se esiste un $\begin{dcases}\text{maggiorante}\\\text{minorante}\end{dcases}$ di $S$.

#### Esempio

L'insieme:

- $[0,1]$ è limitato sup. ed inf.

- $\mathbb{N}$ è limitato inf. ma non sup.

- $\mathbb{Z}$ non è limitato

Considerando ad esempio l'intervallo $[0,1]$, tale insieme possiede come maggioranti tutti e soli i reali $x\geq{1}$ e come minoranti tutti e soli i reali $x\leq{0}$.

*Nota bene*

> Si dice che un insieme $S\subseteq{\mathbb{R}}$ è limitato se è limitato sia sup. sia inf.

### Massimo e minimo di un insieme

Dati $S\subseteq{\mathbb{R}},b\in{\mathbb{R}}$m si dice che $b$ è $\begin{dcases}\text{massimo}\\\text{minimo}\end{dcases}$ di $S$ se:

- $b\in{S}$

- $b$ è $\begin{dcases}\text{maggiorante}\\\text{minorante}\end{dcases}$ di $S$ 

Non sempre il massimo ed il minimo di un insieme limitato esistono, ma se esistono sono unici.

#### Esempio

L'insieme:

- $[0,1]$ è limitato, $\text{max}\,[0,1]=1,\text{min}\,[0,1]=0$

- $\mathbb{N}$ è limitato inf. ma non sup., $\text{max}\,\mathbb{N}$ non esiste, $\text{min}\,\mathbb{N}=0$

- $\mathbb{Z}$ non è limitato, $\text{max}\,\mathbb{Z},\text{min}\,\mathbb{Z}$ non esistono

- $(0,1)$ è limitato ma $\text{max}\,(0,1),\text{min}\,(0,1)$ non esistono

Nell'ultimo caso, comunque preso $b\in(0,1)$ il numero $\frac{b}{2}\in(0,1),\;\frac{b}{2}<b$, cioè si possono scegliere numeri sempre più piccoli senza mai trovare il valore minimo, o valori sempre più grandi senza mai trovare il massimo.

### Estremo superiore ed inferiore di un insieme

Dato un insieme $S\subseteq{\mathbb{R}}$ **limitato superiormente**, si definisce come *estremo superiore* di $S$ il minimo dei suoi maggioranti.

Dato un insieme $S\subseteq{\mathbb{R}}$ **limitato inferiormente**, si definisce come *estremo inferiore* di $S$ il massimo dei suoi minoranti.

#### Esempio

Dati gli insiemi limitati $S_1=(0,1),S_2=(-1,1)\cup{[2,3]}$ possiamo dire:

- $\text{sup}\,(0,1)=1$

- $\text{inf}\,(0,1)=0$

- $\text{sup}\,S=3$

- $\text{inf}\,S=-1$

Non è detto che $\text{sup}\,S,\text{inf}\,S$ siano elementi appartenenti ad $S$, ma se lo sono allora coincidono rispettivamente con $\text{max}\,S,\text{min}\,S$.

## Teorema di completezza

Ogni sottoinsieme di $\mathbb{R}$ limitato $\begin{dcases}\text{superiormente}\\\text{inferiormente}\end{dcases}$ possiede un estremo $\begin{dcases}\text{superiore}\\\text{inferiore}\end{dcases}$

*Nota bene*

> Dato l'insieme $S=\{x\in{\mathbb{Q}}:\;x^2<2\}=\{x\in{\mathbb{Q}}:\;-\sqrt{2}<x<\sqrt{2}\}$. $S$ quindi è limitato:

> - $\text{sup}\,S=\sqrt{2}\notin{\mathbb{Q}}$

> - $\text{inf}\,S=-\sqrt{2}\in{\mathbb{Q}}$

Questo dimostra che il teorema di completezza non vale per l'insieme $\mathbb{Q}$.

*Nota bene*

> D'ora in poi scriveremo $\text{sup}\,S=+\infty$ se $S$ **non** è limitato superiormente e $\text{inf}\,S=-\infty$ se $S$ **non** è limitato inferiormente.

#### Esempio

Dati gli insiemi $\mathbb{N},\mathbb{Z}$ e $S=\{x\in{\mathbb{R}}:\;x>\pi\}$:

- $\text{sup}\,\mathbb{N}=+\infty$

- $\text{sup}\,\mathbb{Z}=+\infty$

- $\text{inf}\,\mathbb{Z}=-\infty$

- $\text{sup}\,\{x\in{\mathbb{R}}:\;x>\pi\}=+\infty$

## Notazione degli intervalli

Siano dati $a\in{\mathbb{R}},b\in{\mathbb{R}}$ con $a<b$. Si definiscono vari tipi di intervalli **limitati** di estremi $a,b$:

- $[a,b]\coloneqq\{x\in{\mathbb{R}}:\;a\leq{x\leq{b}}\}\;\text{chiuso limitato}$

- $[a,b)\coloneqq\{x\in{\mathbb{R}}:\;a\leq{x<b}\}$

- $(a,b]\coloneqq\{x\in{\mathbb{R}}:\;a<x\leq{b}\}$

- $(a,b)\coloneqq\{x\in{\mathbb{R}}:\;a<x<b\}\;\text{aperto limitato}$

Vengono poi definiti anche gli intervalli **illimitati**:

- $\begin{drcases}[a,+\infty)\coloneqq\{x\in{\mathbb{R}}:\;x\geq{a}\}\\(-\infty,a]\coloneqq\{x\in{\mathbb{R}}:\;x\leq{a}\}\end{drcases}\;\text{chiusi illimitati}$

- $\begin{drcases}(a,+\infty)\coloneqq\{x\in{\mathbb{R}}:\;x>a\}\\(-\infty,a)\coloneqq\{x\in{\mathbb{R}}:\;x<a\}\end{drcases}\;\text{aperti illimitati}$

- $(-\infty,+\infty)\coloneqq\mathbb{R}$