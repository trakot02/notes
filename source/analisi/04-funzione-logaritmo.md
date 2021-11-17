---
title: Funzione logaritmo
---

\newpage

# Grafico

$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -0.75, xmax = 5.25,
                ymin = -0.75, ymax = 2.75]
        % Funzione y = ln(x)
        \addplot[blue, thick, domain = 0:5.25]{ln(x)}
            node[at = {(axis cs:4.5,1.25)}]{$f(x)=\log(x)$};
        % Origine
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 165: {$O$}]{};
    \end{axis}
\end{tikzpicture}
$$

## Definizione

Considerato un ramo di iperbole equilatera di equazione $y=\frac{1}{x}$ per $x>0$, definiamo la funzione $\log:(0,+\infty)\to{\mathbb{R}}$ nel modo seguente:
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -0.75, xmax = 5.75,
                ymin = -0.75, ymax = 2.75]
        % Funzione 1/x
        \addplot[blue, thick, domain = 0:6]{1/x}
            node[at = {(axis cs: 5,0.5)}]{$y=\frac{1}{x}$};
        % Area del \log(1/2)
        \addplot[orange, fill = orange, fill opacity = 0.3]
            coordinates {(1,1)(1,0)(0.5,0)(0.5,1/0.5)(0.6,1/0.6)(0.7,1/0.7)(0.8,1/0.8)(0.9,1/0.9)(1,1)};
        % Targhetta del \log(1/2)
        \node[orange, at = {(axis cs: 1,1.8)}]{$\log(\frac{1}{2})$};
        % Area del \log(2)
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1,1)(1,0)(2,0)(2,1/2)(1.9,1/1.9)(1.9,1/1.9)(1.7,1/1.7)(1.6,1/1.6)(1.5,1/1.5)(1.4,1/1.4)(1.3,1/1.3)(1.2,1/1.2)(1.1,1/1.1)(1,1)};
        % Targhetta del \log(2)
        \node[violet, at = {(axis cs: 1.6,0.9)}]{$\log(2)$};
        % Targhetta del punto (0,0)
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 160: {$O$}]{};
        % Targhetta del punto (1,1)
        \addplot[mark = *] coordinates {(1,1)}
            node[pin = 60: {$(1,1)$}]{};
        % Targhetta del punto (1,0)
        \addplot[mark = *] coordinates {(1,0)}
            node[pin = 300: {$(1,0)$}]{};
        % Targhetta del punto (1/2,2)
        \addplot[mark = *] coordinates {(0.5,2)}
            node[pin = 60: {$(\frac{1}{2},2)$}]{};
        % Targhetta del punto (2,1/2)
        \addplot[mark = *] coordinates {(2,0.5)}
            node[pin = 60: {$(2,\frac{1}{2})$}]{};
    \end{axis}
\end{tikzpicture}
$$

Dato $p\geq{1}$ allora $\log(p)$ è definito come l'area sottesa dalla funzione $y=\frac{1}{x}$ e contenuta nei vertici $(1,1),(1,0),(p,0),(p,1/p)$. 

Contrariamente, dato $p\in(0,1)$, definiamo la funzione come **l'opposto** dell'area sottesa dalla funzione $y=\frac{1}{x}$ e contenuta nei vertici $(1,1),(1,0),(p,0),(p,1/p)$.

*Nota bene*

> In sintesi $\log(p)>0$ se $p\geq{0}$, mentre $\log(p)<0$ se $0<p<1$.

## Osservazione

Per ogni $p>0,\;\log(p)$ è uguale all'area sottesa dalla funzione $y=\frac{1}{x}$ e compresa tra i punti $(1,1)$, $(0,0)$ e $(p,\frac{1}{p})$.

### Dimostrazione

Supponiamo $p\geq{1}$. Siano $A_1,A_2,A_3,A_4$ le aree delle quattro regioni in figura. Allora:
$$
\begin{aligned}
    A_1+A_2
    &=\text{Area di OHU}\\
    &=\frac{1\cdot{1}}{2}=\frac{1}{2}
\end{aligned}
\quad
\begin{aligned}
    A_2+A_3
    &=\text{Area di OKP}\\
    &=\frac{p\cdot{\frac{1}{p}}}{2}=\frac{1}{2}
\end{aligned}
$$

Dunque, data l'area della figura $\text{HKPU}=A_3+A_4$:
$$
\begin{aligned}
    A_1+\cancel{A_2}=\cancel{A_2}+A_3
    &\implies{A_1=A_3}\\
    &\implies{A_3+A_4=A_1+A_4}\\
    &\implies{A_1+A_4}=\text{Area di HKPU}&\square
\end{aligned}
$$

Il grafico risultante è:
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -0.75, xmax = 5.75,
                ymin = -0.75, ymax = 2.75]
        % Funzione y = 1/x
        \addplot[blue, thick, domain = 0:6]{1/x}
            node[at = {(axis cs: 5,0.5)}]{$y=\frac{1}{x}$};
        % Funzione y = x
        \addplot[red, dashed, domain = -2:4]{x}
            node[at = {(axis cs: 3,2.5)}]{$y=x$};
        % Area del log(2)
        \addplot[orange, fill = orange, fill opacity = 0.3]
            coordinates {(1,1)(1,0)(2,0)(2,1/2)(1.9,1/1.9)(1.9,1/1.9)(1.7,1/1.7)(1.6,1/1.6)(1.5,1/1.5)(1.4,1/1.4)(1.3,1/1.3)(1.2,1/1.2)(1.1,1/1.1)(1,1)};
        % Area del log(2)
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1,1)(0,0)(2,1/2)(1.9,1/1.9)(1.8,1/1.8)(1.7,1/1.7)(1.6,1/1.6)(1.5,1/1.5)(1.4,1/1.4)(1.3,1/1.3)(1.2,1/1.2)(1.1,1/1.1)(1,1)};
        % Targhetta del log(p)
        \node[violet, at = {(axis cs: 1.6,0.9)}]{$\log(p)$};
        % Targhetta di A1
        \node[black, at = {(axis cs: 0.8,0.5)}]{$A_1$};
        % Targhetta di A2
        \node[black, at = {(axis cs: 0.8,0.1)}]{$A_2$};
        % Targhetta di A3
        \node[black, at = {(axis cs: 1.5,0.2)}]{$A_3$};
        % Targhetta di A4
        \node[black, at = {(axis cs: 1.2,0.5)}]{$A_4$};
        % Targhetta del punto (0,0)
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 160: {$O$}]{};
        % Targhetta del punto (1,1)
        \addplot[mark = *] coordinates {(1,1)}
            node[pin = 60: {U$(1,1)$}]{};
        % Targhetta del punto (1,0)
        \addplot[mark = *] coordinates {(1,0)}
            node[pin = 250: {H$(1,0)$}]{};
        % Targhetta del punto (p,1/p)
        \addplot[mark = *] coordinates {(2,0.5)}
            node[pin = 60: {$P(p,\frac{1}{p})$}]{};
        % Targhetta del punto (p,0)
        \addplot[mark = *] coordinates {(2,0)}
            node[pin = 250: {$K(p,0)$}]{};
    \end{axis}
\end{tikzpicture}
$$

## Proprietà del logaritmo

Vi sono alcune proprietà fondamentali del logaritmo, cioè:

### Proprietà 0

La prima proprietà del logaritmo, si nota osservando il grafico della funzione nel punto $(1,0)$, cioè che:
$$
\log(1)=0
$$

### Proprietà 1

La seconda proprietà del logaritmo è:
$$
\forall{p}\in(0,+\infty),\;\;\log(\frac{1}{p})=-\log(p)
$$

Espressa graficamente risulta più comprensibile:
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -0.75, xmax = 5.75,
                ymin = -0.75, ymax = 2.75]
        % Funzione y = 1/x
        \addplot[blue, thick, domain = 0:6]{1/x}
            node[at = {(axis cs: 5,0.5)}]{$y=\frac{1}{x}$};
        % Funzione y = x
        \addplot[red, dashed, domain = -2:4]{x}
            node[at = {(axis cs: 3,2.5)}]{$y=x$};
        % Area del log(2)
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1,1)(0,0)(2,1/2)(1.9,1/1.9)(1.8,1/1.8)(1.7,1/1.7)(1.6,1/1.6)(1.5,1/1.5)(1.4,1/1.4)(1.3,1/1.3)(1.2,1/1.2)(1.1,1/1.1)(1,1)};
        % Area del log(1/2)
        \addplot[dashed, orange, fill = orange, fill opacity = 0.2]
            coordinates {(1,1)(0,0)(1/2,2)(1/1.9,1.9)(1/1.8,1.8)(1/1.7,1.7)(1/1.6,1.6)(1/1.5,1.5)(1/1.4,1.4)(1/1.3,1.3)(1/1.2,1.2)(1/1.1,1.1)(1,1)};
        % Targhetta del log(p)
        \node[violet, at = {(axis cs: 1.6,0.9)}]{$\log(p)$};
        % Targhetta del log(1/p)
        \node[violet, at = {(axis cs: 1,1.7)}]{$\log(\frac{1}{p})$};
        % Targhetta del punto (0,0)
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 160: {$O$}]{};
        % Targhetta del punto (1,1)
        \addplot[mark = *] coordinates {(1,1)}
            node[pin = 60: {U$(1,1)$}]{};
        % Targhetta del punto (1/p,p)
        \addplot[mark = *] coordinates {(0.5,2)}
            node[pin = 60: {$P_b(\frac{1}{p},p)$}]{};
        % Targhetta del punto (p,1/p)
        \addplot[mark = *] coordinates {(2,0.5)}
            node[pin = 60: {$P_a(p,\frac{1}{p})$}]{};
    \end{axis}
\end{tikzpicture}
$$

### Proprietà 2

La terza proprietà del logaritmo è:
$$
\forall{p}\in(0,+\infty),\forall{q}\in(0,+\infty),\;\;\log(pq)=\log(p)+\log(q)
$$

#### Conservazione delle aree

Date $R$ una regione del piano misurabile qualsiasi e la sua immagine $\bar{R}$ mediante $T$, allora le due possiedono la stessa area. 

Questo perché la trasformazione $T$ modifica i quadrati di lato unitario in rettangoli di lati $p,\frac{1}{p}$, infatti l'area del quadrato $=1\cdot{1}=1=p\cdot{\frac{1}{p}}=$ l'area del rettangolo.
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Conservazione delle aree},
                xmin = -0.75, xmax = 11.5,
                ymin = -0.75, ymax = 5.5]
        % Quadrato 1 * 1
        \addplot[blue, fill = blue, fill opacity = 0.3]
            coordinates {(3,2)(4,2)(4,3)(3,3)(3,2)};
        % Targhetta del quadrato
        \node[blue, at = {(axis cs: 3.5,3.25)}]{$1\cdot{1}$};
        % Rettangolo 2 * 1/2
        \addplot[red, fill = red, fill opacity = 0.3]
            coordinates {(6,2)(8,2)(8,2.5)(6,2.5)(6,2)};
        % Targhetta del rettangolo
        \node[red, at = {(axis cs: 7,3.25)}]{$p\cdot{\frac{1}{p}}$};
    \end{axis}
\end{tikzpicture}
$$

### Dimostrazione

Dati $p>1,q>1$, consideriamo $T$ una trasformazione del piano in sé:
$$
T:\mathbb{R}\times{\mathbb{R}}\to{\mathbb{R}\times{\mathbb{R}}},\;\;(x,y)\mapsto{(px,\frac{y}{p})}
$$

Questa trasformazione manda l'iperbole di equazione $xy=1$ in sé, questo perché se $(x,y)$ appartiene all'iperbole, allora anche $(\bar{x},\bar{y})=T(x,y)=(px,\frac{y}{p})$ appartiene all'iperbole perché:
$$
\bar{x}\bar{y}=\cancel{p}x\cdot{\frac{y}{\cancel{p}}}=xy=1
$$

Scegliamo quindi come $R$ l'area compresa tra i punti:
$$
Q_a(1,0),\;\;Q_b(q,0),\;\;Q_c(q,\frac{1}{q}),\;\;Q_d(1,1)
$$

Il cui grafico risulta come il seguente:
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -0.75, xmax = 5.25,
                ymin = -0.75, ymax = 2.75]
        % Funzione y = 1/x
        \addplot[blue, thick, domain = 0:5.25]{1/x}
            node[at = {(axis cs:4.5,0.5)}]{$f(x)=\frac{1}{x}$};
        % Area di R
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1,1)(1,0)(1.5,0)(1.5,1/1.5)(1.4,1/1.4)(1.2,1/1.2)(1,1)};
        % Targhetta di R
        \node[at = {(axis cs: 1.25,0.4)}]{$R$};
        % Origine
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 165: {$O$}]{};
        % Punto (1,0)
        \addplot[mark = *] coordinates {(1,0)}
            node[pin = 250: {$Q_a(1,0)$}]{};
        % Punto (3/2,0)
        \addplot[mark = *] coordinates {(1.5,0)}
            node[pin = 290: {$Q_b(q,0)$}]{};
        % Punto (3/2,2/3)
        \addplot[mark = *] coordinates {(1.5,1/1.5)}
            node[pin = 60: {$Q_c(q,\frac{1}{q})$}]{};
        % Punto (1,1)
        \addplot[mark = *] coordinates {(1,1)}
            node[pin = 180: {$Q_d(1,1)$}]{};
    \end{axis}
\end{tikzpicture}
$$

Di conseguenza applicando la trasformazione $T(x,y)=(px,\frac{y}{p})$, otteniamo come immagine $\bar{R}$ l'area compresa tra i punti:
$$
P_a(p,0),\;\;P_b(pq,0),\;\;P_c(pq,\frac{1}{pq}),\;\;P_d(p,\frac{1}{p})
$$

Perciò otteniamo il grafico:
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -0.75, xmax = 5.25,
                ymin = -0.75, ymax = 2.75]
        % Funzione y = 1/x
        \addplot[blue, thick, domain = 0:5.25]{1/x}
            node[at = {(axis cs:4.5,0.5)}]{$f(x)=\frac{1}{x}$};
        % Area dell'immagine R
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1.5,1/1.5)(1.6,1/1.6)(1.8,1/1.8)(2,1/2)(2.2,1/2.2)(2.4,1/2.4)(2.5,1/2.5)(2.5,0)(1.5,0)(1.5,1/1.5)};
        % Targhetta di R
        \node[at = {(axis cs: 2,0.25)}]{$\bar{R}$};
        % Area rimanente
        \addplot[orange, fill = orange, fill opacity = 0.1] coordinates {(1,1)(1,0)(1.5,0)(1.5,1/1.5)(1.4,1/1.4)(1.3,1/1.3)(1.2,1/1.2)(1.1,1/1.1)(1,1)};
        % Targhetta area rimanente
        \node[orange, at = {(axis cs: 1.25,0.35)}]{$A$};
        % Origine
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 165: {$O$}]{};
        % Punto (1,1)
        \addplot[mark = *] coordinates {(1,1)}
            node[pin = 180: {$(1,1)$}]{};
        % Punto (1,0)
        \addplot[mark = *] coordinates {(1,0)}
            node[pin = 250: {$(1,0)$}]{};
        % Punto (3/2,2/3)
        \addplot[mark = *] coordinates {(1.5,1/1.5)}
            node[pin = 60: {$P_a(p,\frac{1}{p})$}]{};
        % Punto (3/2,0)
        \addplot[mark = *] coordinates {(1.5,0)}
            node[pin = 290: {$P_b(p,0)$}]{};
        % Punto (5/2,0)
        \addplot[mark = *] coordinates {(2.5,0)}
            node[pin = 290: {$P_c(pq,0)$}]{};
        % Punto (5/2,2/5)
        \addplot[mark = *] coordinates {(2.5,1/2.5)}
            node[pin = 60: {$P_d(pq,\frac{1}{pq})$}]{};
    \end{axis}
\end{tikzpicture}
$$

Per cui dato che $\log(p)$ è definito come l'area compresa tra $(1,0),(p,0),(p,\frac{1}{p}),(1,1)$, cioè $A$, e che $\bar{R}$ ed $R$ sono equivalenti, allora:
$$
\begin{aligned}
    \log(pq)
    &=\text{Area di}\;A+\text{Area di}\;\bar{R}\\
    &=\log(p)+\text{Area di}\;\bar{R}\\
    &=\log(p)+\text{Area di}\;R\\
    &=\log(p)+\log(q)&\square
\end{aligned}
$$

### Proprietà 3

La quarta proprietà del logaritmo è di essere una funzione iniettiva, pertanto possiamo scrivere:
$$
a<b\iff\log(a)<\log(b)
$$

Infatti dal grafico si nota che il logaritmo di $a$ è minore di $b$:
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Funzione logaritmo},
                xmin = -0.75, xmax = 5.25,
                ymin = -0.75, ymax = 2.75]
        % Funzione y = 1/x
        \addplot[blue, thick, domain = 0:5.25]{1/x}
            node[at = {(axis cs:4.5,0.5)}]{$f(x)=\frac{1}{x}$};
        % Area dell'immagine R
        \addplot[violet, fill = violet, fill opacity = 0.3]
            coordinates {(1.5,1/1.5)(1.6,1/1.6)(1.8,1/1.8)(2,1/2)(2.2,1/2.2)(2.4,1/2.4)(2.5,1/2.5)(2.5,0)(1.5,0)(1.5,1/1.5)};
        % Targhetta di R
        \node[at = {(axis cs: 2,0.25)}]{$\bar{R}$};
        % Area rimanente
        \addplot[orange, fill = orange, fill opacity = 0.1] coordinates {(1,1)(1,0)(1.5,0)(1.5,1/1.5)(1.4,1/1.4)(1.3,1/1.3)(1.2,1/1.2)(1.1,1/1.1)(1,1)};
        % Targhetta area rimanente
        \node[orange, at = {(axis cs: 1.25,0.35)}]{$A$};
        % Origine
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 165: {$O$}]{};
        % Punto (1,1)
        \addplot[mark = *] coordinates {(1,1)}
            node[pin = 180: {$(1,1)$}]{};
        % Punto (3/2,2/3)
        \addplot[mark = *] coordinates {(1.5,1/1.5)}
            node[pin = 60: {$P_a(a,\frac{1}{a})$}]{};
        % Punto (5/2,2/5)
        \addplot[mark = *] coordinates {(2.5,1/2.5)}
            node[pin = 60: {$P_b(b,\frac{1}{b})$}]{};
        % Parentesi graffa di a
        \draw[decorate, decoration = {brace, amplitude = 2pt, mirror}, yshift = -0.2cm] (axis cs: 1,-0.15) -- (axis cs: 1.5,-0.15)
            node[black, midway, yshift =- 0.3 cm]{$a$};
        % Parentesi graffa di b
        \draw[decorate, decoration = {brace, amplitude = 2pt, mirror}, yshift = -0.2cm] (axis cs: 1,-0.4) -- (axis cs: 2.5,-0.4)
            node[black, midway, yshift =- 0.3 cm]{$b$};
    \end{axis}
\end{tikzpicture}
$$

### Proprietà 4

La quinta proprietà del logaritmo è il fatto di essere anche una funzione suriettiva, grazie alla quale possiamo dire con certezza che il logaritmo è una funzione biettiva.
