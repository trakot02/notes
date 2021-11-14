---
title: Funzione logaritmo
---

\newpage

# Definizione

Considerato un ramo di iperbole equilatera di equazione $y=\frac{1}{x}$ per $x>0$, definiamo la funzione $log:(0,+\infty)\to{\mathbb{R}}$ nel modo seguente.

$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -1.5, xmax = 5.5, ymin = -0.5, ymax = 3.5]
        \addplot[blue, thick, domain = 0:5.5]{1/x}
            node[at = {(axis cs: 5,0.5)}]{$y=\frac{1}{x}$};
        \addplot[orange, fill = orange, fill opacity = 0.3]
            coordinates {(1,1)(1,0)(0.4,0)(0.4,1/0.4)(0.5,1/0.5)(0.6,1/0.6)(0.7,1/0.7)(0.8,1/0.8)(0.9,1/0.9)};
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1,1)(1,0)(2.5,0)(2.5,1/2.5)(2.3,1/2.3)(2.1,1/2.1)(1.9,1/1.9)(1.7,1/1.7)(1.5,1/1.5)(1.3,1/1.3)(1.1,1/1.1)};
        \node[orange, at = {(axis cs: 1.5,1.5)}]{$log(0.4)$};
        \node[violet, at = {(axis cs: 2,1)}]{$log(2.5)$};
        \addplot[mark = *]
            coordinates {(0,0)}
            node[pin = 135: {$O$}]{};
    \end{axis}
\end{tikzpicture}
$$

Dato $p\geq{1}$ allora $log(p)$ è definito come l'area sottesa dalla funzione $y=\frac{1}{x}$ e contenuta nei vertici $(1,1),(1,0),(p,0),(p,1/p)$. 

Contrariamente, dato $p\in(0,1)$, definiamo la funzione come **l'opposto** dell'area sottesa dalla funzione $y=\frac{1}{x}$ e contenuta nei vertici $(1,1),(1,0),(p,0),(p,1/p)$.

*Nota bene*

> In sintesi:

> - $log(p)>0$ se $p\geq{0}$
> - $log(p)<0$ se $0<p<1$.

## Osservazione

Per ogni $p>0,\;log(p)$ è uguale all'area sottesa dalla funzione $y=\frac{1}{x}$ e compresa tra i punti $(1,1)$, $(0,0)$ e $(p,\frac{1}{p})$.

$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -1.5, xmax = 5.5, ymin = -0.5, ymax = 3.5]
        \addplot[blue, thick, domain = 0:5.5]{1/x}
            node[at = {(axis cs:5,0.5)}]{$f(x)=\frac{1}{x}$};
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1,1)(0,0)(2,1/2)(1.9,1/1.9)(1.7,1/1.7)(1.5,1/1.5)(1.3,1/1.3)(1.1,1/1.1)};
        \node[violet, at = {(axis cs: 2,1)}]{$log(2)$};
        \addplot[mark = *]
            coordinates {(0,0)}
            node[pin = 135: {$O$}]{};
    \end{axis}
\end{tikzpicture}
$$

### Dimostrazione

Supponiamo $p\geq{1}$. Siano $A_1,A_2,A_3,A_4$ le aree delle quattro regioni in figura. Allora:

$$
\begin{aligned}
    A_1+A_2
    &=\text{Area del triangolo rettangolo OHU}\\
    &=\frac{1\cdot{1}}{2}=\frac{1}{2}
\end{aligned}
$$

Mentre:

$$
\begin{aligned}
    A_2+A_3
    &=\text{Area del triangolo rettangolo OKP}\\
    &=\frac{p\cdot{\frac{1}{p}}}{2}=\frac{1}{2}
\end{aligned}
$$

Dunque, data l'area della figura $\text{HKPU}=A_3+A_4$:

$$
\begin{aligned}
    A_1+A_2=A_3+A_2
    &\implies{A_1=A_3}\\
    &\implies{A_3+A_4=A_1+A_4}\\
    &\implies{A_1+A_4}=\text{Area della figura HKPU}&\square
\end{aligned}
$$

$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -1.5, xmax = 5.5, ymin = -0.25, ymax = 1.75]
        \addplot[blue, thick, domain = 0:5.5]{1/x}
            node[at = {(axis cs: 5,0.5)}]{$f(x)=\frac{1}{x}$};
        \addplot[violet]
            coordinates {(1,0)(1,1)(0,0)(2,1/2)(2,0)(2,1/2)(1.8,1/1.8)(1.6,1/1.6)(1.4,1/1.4)(1.2,1/1.2)(1,1)};
        \node[at = {(axis cs: 0.7,0.4)}]{$A_1$};
        \node[at = {(axis cs: 0.8,0.1)}]{$A_2$};
        \node[at = {(axis cs: 1.55,0.17)}]{$A_3$};
        \node[at = {(axis cs: 1.3,0.55)}]{$A_4$};
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 135: {$O(0,0)$}]{};
        \addplot[mark = *] coordinates {(1,1)}
            node[pin = 90: {$U(1,1)$}]{};
        \addplot[mark = *] coordinates {(2,1/2)}
            node[pin = 90: {$P(p,\frac{1}{p})$}]{};
        \addplot[mark = *] coordinates {(1,0)}
            node[pin = 205: {$H(1,0)$}]{};
        \addplot[mark = *] coordinates {(2,0)}
            node[pin = 335: {$K(p,0)$}]{};
    \end{axis}
\end{tikzpicture}
$$