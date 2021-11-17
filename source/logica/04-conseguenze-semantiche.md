---
title: Conseguenze semantiche
---

\newpage

# Ragionamento ipotetico deduttivo

Il ragionamento tipico della matematica è il ragionamento ipotetico-deduttivo, rappresentato in logica dalle conseguenze semantiche.

## Conseguenze semantiche

###### *Notazione*

- $\Gamma,\Sigma,\Delta$ rappresentano insiemi arbitrari di proposizioni
- $\alpha,\beta,\phi,\psi$ rappresentano generiche proposizioni

Quindi per indicare che da un'ipotesi segue una proposizione si adotta la scrittura $\Gamma\taut{\psi}$, che si legge come "Da $\Gamma$ segue $\psi$".

Possiamo affermare che la valutazione di un insieme di proposizioni è uguale ad uno se e solamente se la valutazione di tutti i suoi elementi è tale, infatti, dato un insieme $\Gamma$ ed una valutazione $v$:
$$
\valu{\Gamma}_v=1\iff\forall{\phi}\in{\Gamma},\;\valu{\phi}_v=1
$$

L'espressione $\Gamma\taut{\psi}$ si dice conseguenza semantica se e solamente se $\psi$ è verificata da ogni valutazione $v$ che verificha anche $\Gamma$, per cui scriviamo:
$$
\forall{v}\valu{\Gamma}_v=1\implies\valu{\psi}_v=1
$$ {#eq:conseguenza_semantica}

#### Esempio

Vogliamo provare che se $\alpha$ ed $\alpha\limp\beta$ sono vere, allora lo è anche $\beta$, cioè che $\alpha\limp\beta,\alpha\taut{\beta}$.

Svolgimento:
$$
\begin{aligned}
  \valu{\alpha\limp\beta,\alpha}_v=1
  &\iff\valu{\alpha\limp\beta}_v=1\text{ and }\valu{\alpha}_v=1\\
  &\iff(\cancel{\valu{\alpha}_v=0}\text{ or }\valu{\beta}_v=1)\text{ and }\valu{\alpha}_v=1\\
  &\implies\valu{\beta}_v=1\text{ and }\valu{\alpha}_v=1\\
  &\implies\valu{\beta}_v=1
  &\square
\end{aligned}
$$

#### Esercizio

Vogliamo dimostrare che $(\Gamma,\alpha\taut{\beta})\implies(\Gamma\taut{\alpha\limp\beta})$.

Svolgimento:
$$
\begin{aligned}
  \forall{v}\valu{\Gamma,\alpha}_v=1\implies\valu{\beta}_v=1
  &\iff(\valu{\Gamma}_v=1\text{ and }\valu{\alpha}_v=1)\implies\valu{\beta}_v=1\\
  &\iff(\valu{\Gamma}_v\ne{1}\text{ or }\underline{\valu{\alpha}_v=0})\text{ or }\underline{\valu{\beta}_v=1}\\
  &\iff\valu{\Gamma}_v\ne{1}\text{ or }\valu{\alpha\limp\beta}_v=1\\
  &\implies\Gamma\taut{\alpha\limp\beta}
  &\square
\end{aligned}
$$

### Tautologie notevoli

A livello teorico esistono infinite tautologie, ma tra le più importanti citiamo:

- Leggi di De Morgan: $\begin{dcases}\lnot(\phi\land\psi)\liff(\lnot\phi\lor\lnot\psi)\\\lnot(\phi\lor\psi)\liff(\lnot\phi\land\lnot\psi)\end{dcases}$

- Involutività della negazione: $\begin{dcases}\lnot(\lnot\alpha)\liff\alpha\end{dcases}$

- Commutatività: $\begin{dcases}(\phi\land\psi)\liff(\psi\land\phi)\\(\phi\lor\psi)\liff(\psi\lor\phi)\end{dcases}$

- Distributività: $\begin{dcases}\phi\land(\psi\lor\sigma)\liff(\phi\land\psi)\lor(\phi\land\sigma)\\\phi\lor(\psi\land\sigma)\liff(\phi\lor\psi)\land(\phi\lor\sigma)\end{dcases}$

- Associatività: $\begin{dcases}\phi\land(\psi\land\sigma)\liff(\phi\land\psi)\land\sigma\\\phi\lor(\psi\lor\sigma)\liff(\phi\lor\psi)\lor\sigma\end{dcases}$

## Stringhe ed occorrenze

Dato un insieme di simboli generici $\Omega$, una stringa su questo insieme è una sequenza di finita lunghezza $n$, della forma:
$$
s=c_1\;c_2\;\dots\;c_n
$$ {#eq:stringa}

dove per ogni indice $i$ appartenente all'intervallo $(1,n)$ il simbolo $c_i$, si trova in $\Omega$.

Di conseguenza, dato un simbolo $a\in\Omega$ si dice occorrenza della stringa $s$, ogni coppia $(a,i)$ tale per cui il simbolo di partenza $a=c_i$.

## Sostituzione

Siano quindi $\phi,\psi\in{PROP}$ e $p\in\phi$, si scrive $\phi\repl{\psi}{p}$ per indicare che il simbolo $p$ viene rimpiazzato dalla proposizione $\psi$.

### Definizione iterativa

Per applicare la sostituzione in modo iterativo, si scorre una proposizione per individuare tutte le occorrenze e si rimpiazza il valore.

#### Esempio

Data $\phi=((p_1\limp(p_5\lor{p_1}))\land{p_3})$, vogliamo sostituire $p_1$ con $\phi$.

Svolgimento:

> Le occorrenze di $p_1$ sono $(p_1,3),(p_1,8)$, sostituendo $p_1$ con $\psi$ otteniamo: $((\psi\limp(p_5\lor{\psi}))\land{p_3})$.

### Definizione ricorsiva

Sia $*$ un connettivo tra $\{\land,\lor,\limp\}$, allora:

1. $\phi\repl{\psi}{p}=\begin{dcases}\bot\text{ iff }&\phi=\bot\\\phi\text{ iff }&\phi\in{AT},\;\phi\ne{p}\\\psi\text{ iff }&\phi\in{AT},\;\phi=p\end{dcases}$

2. $(\lnot\phi)\repl{\psi}{p}=\lnot(\;\repl{\psi}{p}\;)$

3. $(\phi_1*\phi_2)\repl{\psi}{p} = (\;\phi_1\repl{\psi}{p}*\phi_2\repl{\psi}{p}\;)$

### Lemma

Sia $\psi_1\liff\psi_2=(\psi_1\limp\psi_2)\land(\psi_2\limp\psi_1)$, allora dato $\taut{\psi_1\liff\psi_2}$, vale: $\taut{\phi\repl{\psi}{p}\liff\phi\repl{\psi}{p}}$

## Relazioni di equivalenza

Sia $A$ un insieme e sia $R\subseteq{A\times{A}}$, quest'ultima viene chiamata relazione di equivalenza se e solamente:

- È riflessiva: $\forall{a}\in{A},aRa$
- È transitiva: $\forall{a,b,c}\in{a},(aRb,bRc)\implies{aRc}$
- E simmetrica: $\forall{a,b}\in{A},(aRb,bRa)$

*Nota bene*

> Un esempio di relazione di equivalenza è la similitudine tra triangoli.

### Lemma

Si dice che $\phi$ è equivalente a $\psi$ se e solamente se $\phi\liff\psi$ è una tautologia, infatti scriviamo che:
$$
\phi\approx\psi\iff\taut{\phi\liff\psi}
$$

Con $\approx\;\subseteq{PROP\times{PROP}}$.
