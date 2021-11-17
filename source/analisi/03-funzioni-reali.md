---
title: Funzioni reali
---

\newpage

# Funzioni reali a variabile reale

Dati due insiemi $A,B$, una funzione $f:A\to{B}$ è una relazione che associa ad ogni elemento del *dominio* $A$ **uno ed un solo** elemento del *codominio* $B$.

Noi ci interessiamo alle funzioni reali di variabile reale, cioè a quelle del tipo $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$.

*Nota bene*

> Al fine di definire una funzione è essenziale specificarne il dominio.

## Iniettività, suriettività e biettività

Una funzione $f:A\to{B}$ si dice:

- *Iniettiva* se possiede **al massimo una** soluzione $x\in{A}$
- *Suriettiva* se possiede **almeno una** soluzione $x\in{A}$
- *Biettiva* o *biunivoca* se possiede **esattamente una** soluzione $x\in{A}$, cioè se è sia *iniettiva* che *suriettiva*.

All'espressione $f(x)=y$ per ogni $y\in{B}$. 

*Nota bene*

> Per funzioni $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ queste proprietà si possono dedurre dal numero di volte che ogni retta orizzontale interseca il grafico di $f$, ad esempio $f(x)=x$ incontra tutte le rette orizzontali una volta sola.

#### Esempio

La funzione $f(x)=x^3-x$ interseca tutte le rette orizzontali almeno una volta, ma incontra tre volte la retta orizzontale $y=0$.
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione suriettiva}]
        % Funzione y = x^3-x
        \addplot[blue, thick, domain = -3:3]{pow(x,3)-x}
            node[at = {(axis cs: 4.5,7)}]{$f(x)=x^3-x$};
        % Funzione y = 0
        \addplot[red, thick]{0} node[at = {(axis cs: 7,1)}]{$y=0$};
    \end{axis}
\end{tikzpicture}
$$

#### Esempio

La funzione $f(x)=e^x$ interseca alcune rette orizzontali una sola volta ma non interseca alcuna retta orizzontale al di sotto di $y=0$.
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione iniettiva}]
        % Funzione y = e^x
        \addplot[blue, thick, domain = -8.5:2.5]{pow(e,x)}
            node[at = {(axis cs: 4,7)}]{$f(x)=e^x$};
        % Funzione y = -2
        \addplot[red, thick]{-2} node[at = {(axis cs: 7,-3)}]{$y=-2$};
    \end{axis}
\end{tikzpicture}
$$

#### Esempio

La funzione $f(x)=x^3+3x$ interseca tutte le rette orizzontali esattamente una singola volta come $g(x)=x$.
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione biettiva}]
        % Funzione y = x^3+3x
        \addplot[blue, thick, domain = -2:2]{pow(x,3)+3*x}
            node[at = {(axis cs: 4,7)}]{$f(x)=x^3+3x$};
    \end{axis}
\end{tikzpicture}
$$

*Nota bene*

> Ovviamente esistono anche funzioni che non godono di queste proprietà, come ad esempio la funzione $f(x)\coloneqq{x^2-1}$

## Funzioni monotone

Una funzione $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ si dice:

- *Non decrescente* se $f(x_1)\leq{f(x_2)}$
- *Strettamente crescente* se $f(x_1)<f(x_2)$
- *Non crescente* se $f(x_1)\geq{f(x_2)}$
- *Strettamente decrescente* se $f(x_1)>f(x_2)$

Per ogni $x_1\in{A},x_2\in{A}$ con $x_1<x_2$.

*Nota bene*

> Le funzioni strettamente monotone sono **sempre** iniettive.

#### Esempio

Le funzioni $f_1(x)=e^x+2$, $f_2(x)=x^3-1$ ed $f_3(x)=-2x$ sono rispettivamente: strettamente crescente, non decrescente e strettamente decrescente.
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzioni monotone},
                xmin = -5.5, xmax = 5.5,
                ymin = -3.5, ymax = 8.5]
        % Funzione e^x
        \addplot[blue, thick, domain = -8.5:2.5]{pow(e,x)+1}
            node[at = {(axis cs: -4,2)}]{$f_1(x)=e^x+1$};
        % Funzione x^3
        \addplot[teal, thick, domain = -2.5:2.5]{pow(x,3)-1}
            node[at = {(axis cs: 3,4)}]{$f_2(x)=x^3-1$};
        % Funzione -2x
        \addplot[cyan, thick, domain = -5:3]{-2*x}
            node[at = {(axis cs: 2.2,-2)}]{$f_3(x)=-2x$};
    \end{axis}
\end{tikzpicture}
$$


*Nota bene*

> Esistono anche funzioni che non godono di queste proprietà, come ad esempio la funzione $f(x)\coloneqq{x^2-x}$.

## Funzioni pari e dispari

Una funzione $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ si dice:

- *pari*  se $\forall{x}\in{A},\;f(-x)=f(x)$
- *dispari* se $\forall{x}\in{A},\;f(-x)=-f(x)$.

E soprattutto se il suo dominio $A$ è simmetrico rispetto all'origine.

*Nota bene*

> Possiamo dire che quando la funzione è pari, il grafico è simmetrico rispetto all'asse $y$, mentre la funzione è dispari quando il grafico è simmetrico all'origine.

Quando $f$ è un **polinomio**, possiamo affermare che è pari quando **l'esponente di grado più alto** all'interno è pari, al contrario affermiamo che è dispari quando l'esponente di grado più alto è dispari.

*Nota bene*

> La funzione coseno è pari, mentre la funzione seno è dispari.

#### Esempio

Le funzioni $f,g:\mathbb{R}\to{\mathbb{R}}$, definite come $f(x)\coloneqq{x^2},\;g(x)\coloneqq{(x^3}\;\;\forall{x}\in{\mathbb{R}}$ sono rispettivamente: pari e dispari.
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzioni pari e dispari},
                xmin = -5.5, xmax = 5.5,
                ymin = -5.5, ymax = 5.5]
        % Funzione y = x^2
        \addplot[blue, thick, domain = -3:3]{pow(x,2)}
            node[at = {(axis cs: 3,4)}]{$f(x)=x^2$};
        % Funzione y = x^3+3x
        \addplot[teal, thick, domain = -3:3]{pow(x,3)+3*x}
            node[at = {(axis cs: -2,-2)}]{$g(x)=x^3+3x$};
    \end{axis}
\end{tikzpicture}
$$

### Alcune funzioni importanti

- Funzioni polinomiali: sono quelle funzioni $\mathbb{R}\to{\mathbb{R}}$ della forma:
$$
f(x)\coloneqq{\sum_{k=0}^{n}c_kx^k}=c_0+c_1x+c_2x^2+\dots+c_nx^n
$$

$\forall{x}\in{\mathbb{R}}$, dove $n\in{\mathbb{N}}$ e $c_0,c_1,c_2,\dots,c_n$ sono numeri reali dati.

- Funzioni razionali: sono quelle funzioni della forma:
$$
f(x)\coloneqq{\frac{P(x)}{Q(x)}}
$$

Con $P,Q$ polinomi e il dominio di $f$ è $\{x\in{\mathbb{R}}:\;Q(x)\ne{0}\}$.

- Funzioni trigonometriche ($\sin,\cos,\tan$)

- Funzioni esponenziale e logaritmo.