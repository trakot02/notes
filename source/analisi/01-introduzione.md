---
title: Introduzione
---

- [Quantificatori](#quantificatori)
      - [Esempio](#esempio)
      - [Esempio](#esempio-1)
          - [*Nota bene*](#nota-bene)
    - [Negazioni di un enunciato con quantificatori](#negazioni-di-un-enunciato-con-quantificatori)
          - [*Nota bene*](#nota-bene-1)
  - [Induzione matematica](#induzione-matematica)
      - [Esempio](#esempio-2)
      - [Esempio](#esempio-3)
      - [Esempio](#esempio-4)
      - [Esempio](#esempio-5)

# Quantificatori

I quantificatori sono:

- $\forall$: "per ogni", quantificatore universale
- $\exists$: "esiste", quantificatore esistenziale

#### Esempio

Scriviamo la frase

> Ogni numero intero $n$, se è maggiore di $5$ allora è maggiore di $2$

come:

$$
\forall{n}\in{\mathbb{Z}},n>5\implies{n>2}
$$

#### Esempio

Scriviamo la frase

> Esiste un numero intero maggiore di $5$

come:

$$
\exists{n}\in{\mathbb{Z}}\,\tc{n>5}
$$

*Nota bene*

> Con il quantificatore $\exists$ intendiamo "*Esiste almeno un elemento*". Se invece vogliamo specificare che ne esiste esattamente uno diciamo "*Esiste ed è unico*" utilizzando il simbolo $\exists!$, infatti:

$$
\exists!n\in{\mathbb{Z}}\,\tc{2n=6}
$$

### Negazioni di un enunciato con quantificatori

*Nota bene*

> Una proposizione contronominale è la proposizione con ipotesi e tesi negate e scambiate rispetto all'originale.

Considerando l'enunciato $\forall{x}\in{A},\,P(x)$, la sua negazione è:

$$
\exists{x}\in{A}\,\tc\text{ non }P(x)
$$

In altre parole, se esiste almeno un elemento $x\in{A}$ per cui **non** vale la proprietà $P$, allora significa che tale proprietà non vale per tutti gli elementi.

Similmente considerando l'enunciato $\exists{x}\in{A}\,\tc{P(x)}$, la sua negazione è:

$$
\forall{x}\in{A},\text{ non }P(x)
$$

## Induzione matematica

È un particolare tipo di ragionamento deduttivo[^1] da non confondere con l'implicazione *empirica*.

#### Esempio

Vogliamo calcolare la somma dei numeri interi positivi minori o uguali a cento.

$$
\begin{aligned}
  S&=1+2+\dots+99+100\\
  S&=100+99+\dots+2+1\\
  \hline
  2S&=101+101+\dots+101+101\\
  &=101\cdot{100}
\end{aligned}
$$ {#eq:gauss_sum}

Da cui $S=\frac{101\cdot{100}}{2}=101\cdot{50}=5050$, quindi azzardiamo una congettura:

$$
\forall{n}\in{\mathbb{N}},\,\sum_{k=0}^{n}k=\frac{n(n+1)}{2}
$$

Dove $\mathbb{N}$ è l'insieme dei numeri naturali (interi non negativi o per alcuni escluso lo zero), $\mathbb{N}=\{0,1,2,3,\dots\}$, inoltre:

$$
\sum_{k=0}^{n}k\coloneqq{0+1+2+\dots+n}
$$

Dimostriamo la congettura @eq:gauss_sum per **induzione**:

- Passo base: l'espressione @eq:gauss_sum è soddisfatta quando $n=0$ perché

$$
\sum_{k=0}^{0}k=\frac{0\cdot{1}}{2}
$$

- Passo induttivo: se $n\in{\mathbb{N}}$ soddisfa l'espressione @eq:gauss_sum altrettanto vale anche per $n+1$

$$
\begin{aligned}
  \sum_{k=0}^{n+1}k
  &=0+1+\cdots+n+(n+1)\\
  &=\sum_{k=0}^{n}k+n+1\\
  &=\frac{n(n+1)}{2}+n+1\\
  &=(n+1)(\frac{n}{2}+1)\\
  &=\frac{(n+1)(n+2)}{2}
  &\square
\end{aligned}
$$

Più in generale per dimostrare un enunciato del tipo $\forall{n}\in{\mathbb{N}},\,P(n)$ occorre dimostrare:

- Il passo base, $P(0)$
- Il passo induttivo, $\forall{n}\in{\mathbb{N}},\,P(n)\longrightarrow{P(n+1)}$

#### Esempio

Vogliamo dimostrare che $\sum_{k=1}^{n}k^2=1+2^2+\dots+n^2=\frac{n(n+1)(2n+1)}{6}$

- Passo base: per $n=1$,
$$
\sum_{k=1}^{1}k^2=\frac{1\cdot{2}\cdot(2\cdot{1}+1)}{6}
$$

- Passo induttivo: se $n\in{\mathbb{N}}$ soddisfa la formula, allora
$$
\begin{aligned}
  \sum_{k=1}^{n+1}k^2
  &=\sum_{k=1}^{n}k^2+(n+1)^2\\
  &=\frac{n(n+1)(2n+1)}{6}+(n+1)^2\\
  &=(n+1)(\frac{n(2n+1)}{6}+n+1)\\
  &=(n+1)\cdot\frac{2n^2+7n+6}{6}\\
  &=\frac{(n+1)(n+2)(2n+3)}{6}
  &\square
\end{aligned}
$$

La formula è la stessa, scritta rimpiazzando $n$ con $n+1$, quindi la formula è dimostrata.

#### Esempio

Vogliamo dimostrare che $\forall{k}\in{\mathbb{N}}\tc{k\geq{1}},\;2^k>k$

- Passo base: $2^1=2>1$

- Passo induttivo: se $k\in{\mathbb{N}},\,k>1$ soddisfa $2^k>k$, allora
$$
2^{k+1}=2\cdot{2^k}>2k>k+1
$$

Dunque $2^{k+1}>k+1\;\;\square$

#### Esempio

Diseguaglianza di Bernoulli.

Dato un numero reale $x\geq{-1}$ vogliamo dimostrare

$$
\forall{k}\in{\mathbb{N}},\;(1+x)^k\geq{1+kx}
$$

- Passo base: per $k=0$, $(1+x)^0=1\geq{1+0\cdot{x}}$

- Passo induttivo: se $k\in{\mathbb{N}}$ soddisfa la diseguaglianza, allora
$$
\begin{aligned}
  (1+x)^{k+1}
  &=(1+x)^k(1+x)\geq(1+kx)(1+x)\\
  &=1+(k+1)x+kx^2\geq{1+(k+1)x}
  &\square
\end{aligned}
$$

[^1]: L'induzione matematica è un assioma dell'aritmetica dei numeri naturali. (Giuseppe Peano, 1889)
