---
title: Limiti
---

\newpage

# Calcolo infinitesimale

La definizione di limite è **fondamentale** per l'analisi matematica.

## Limite finito

Sia $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato superiormente, e sia $L$ un numero reale. Si dice che il limite di $f$ per $x$ tendente a $+\infty$ equivale ad $L$ (oppure che $f$ tende ad $L$ per $x$ che tende a $+\infty$), quando:
$$
\begin{gathered}
    \forall{\epsilon>0},\;\exists{K>0}\tc{\forall{x\in{A}\text{ con }x\geq{K}}},\\
    L-\epsilon\leq{f(x)}\leq{L+\epsilon}
\end{gathered}
$$

### Dimostrazione

Data una $f:\mathbb{N}\setminus{\{0\}}\to{\mathbb{R}}$ come $f(n)=\frac{1}{n}\;\forall{n\in{\mathbb{N}\setminus{\{0\}}}}$, vogliamo dimostrare che $\lim_{n\to+\infty}f(n)=0$.
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Limite finito},
                xmin = -0.75, xmax = 10.5,
                ymin = -1.25, ymax = 4.5]
        % Funzione y = ln(x)
        \addplot[blue, thick, only marks, domain = 0:11]
            coordinates {(1,1)(2,1/2)(3,1/3)(4,1/4)(5,1/5)(6,1/6)(7,1/7)(8,1/8)(9,1/9)(10,1/10)}
            node[at = {(axis cs: 1,1.5)}]{$f(x)$};
        % Origine
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 125: {$O$}]{};
        % Targhetta y = L + epsilon
        \node[black, at = {(axis cs: 9.5,0.8)}]{$y=L+\epsilon$};
        % Targhetta y = L - epsilon
        \node[black, at = {(axis cs: 9.5,-0.8)}]{$y=L-\epsilon$};
        % Area tra y = 2 ed y = 3
        \addplot[cyan, fill = cyan, fill opacity = 0.05]
            coordinates {(-2,-0.5)(12,-0.5)(12,0.5)(-2,0.5)(-2,-0.5)};
        % Segmento x = K
        \addplot[teal] coordinates {(5,-2)(5,5)};
        % Targhetta K
        \node[black, at = {(axis cs: 4.6,-1)}]{$K$};
    \end{axis}
\end{tikzpicture}
$$

Occorre fissare una $\epsilon>0$ **arbitrario**, di conseguenza sappiamo che deve esistere un $K\in{\mathbb{N}}\tc{0<\frac{1}{\epsilon}\leq{K}}$ (per il postulato di Eudosso-Archimede).

Quindi fissiamo una $n\in{\mathbb{N}}\tc{n\geq{K}}$:
$$
\begin{dcases}
    \frac{1}{n}\leq{\frac{1}{K}\leq{\epsilon}=0+\epsilon}\\
    \frac{1}{n}\geq{0\geq{-\epsilon=0-\epsilon}}
\end{dcases}\qquad\square
$$

Perciò abbiamo verificato che $L-\epsilon\leq{f(n)\leq{L+\epsilon}}$ con $L=0$ e possiamo scrivere:
$$
\lim_{n\to{+\infty}}\frac{1}{n}=0
$$

*Nota bene*

> Questa scrittura è equivalente a $\frac{1}{n}\to{0}\text{ per }n\to{+\infty}$.

## Limite infinito

Sia $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato superiormente. Si dice che il limite di $f$ per $x$ tendente a $+\infty$ equivale a $+\infty$ (oppure che $f$ tende a $+\infty$ per $x$ che tende a $+\infty$), quando:
$$
\forall{M>0},\;\exists{K>0}\tc{\forall{x}\in{A}\text{ con }\geq{K}},f(x)\geq{M}
$$

Similmente si dice che il limite di una funzione equivale a $-\infty$ quando:
$$
\forall{M>0},\;\exists{K>0}\tc{\forall{x}\in{A}\text{ con }\geq{K}},f(x)\leq{-M}
$$
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Limite infinito},
                xmin = -0.75, xmax = 10.5,
                ymin = -1.25, ymax = 4.5]
        % Funzione y = ln(x)
        \addplot[blue, thick, domain = 0:11]{2*ln(x)}
            node[at = {(axis cs: 9,3.8)}]{$f(x)$};
        % Origine
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 125: {$O$}]{};
        % Targhetta y = L + epsilon
        \node[black, at = {(axis cs: 9.5,2.5)}]{$y=M$};
        % Area tra y = 2 ed y = 3
        \addplot[cyan, fill = cyan, fill opacity = 0.1]
            coordinates {(-2,3)(12,3)(12,5)(-2,5)(-2,-3)};
        % Segmento x = K
        \addplot[teal] coordinates {(6,-2)(6,5)};
        % Targhetta K
        \node[black, at = {(axis cs: 5.6,-1)}]{$K$};
    \end{axis}
\end{tikzpicture}
$$

#### Esempio

Data $f:\mathbb{N}\to{\mathbb{R}},\;f(n)=n^2+1\;\forall{n\in{\mathbb{N}}}$, dimostriamo $lim_{n\to{+\infty}}=(n^2+1)=+\infty$.

Svolgimento: Fissiamo $M>0$ arbitrario, per il quale, dal postulato di Eudosso-Archimede, sappiamo che esiste $K\in{\mathbb{N}}\tc{K\geq{M}}$. Infine consideriamo $n\in{\mathbb{N}}\text{ con }n\geq{K}$:
$$
f(n)=n^2+1\geq{K^2+1\geq{K\geq{M}}}\qquad\square
$$

*Nota bene*

> La disequazione di secondo grado $K^2+1\geq{K}$ è rispettata per qualsiasi $K$ reale.

## Limite inesistente

Data $f:\mathbb{N}\to{\mathbb{R}},\;f(n)\coloneqq{(-1)^n}$, vale a dire:
$$
f(n)\coloneqq{
\begin{dcases}
    +1&\text{n pari}\\
    -1&\text{n dispari}
\end{dcases}}
$$

Il cui grafico è il seguente:
$$
\begin{tikzpicture}
    \begin{axis}[functions, title = {Limite inesistente},
                xmin = -0.75, xmax = 8.75,
                ymin = -2.25, ymax = 2.25]
        % Funzione y = ln(x)
        \addplot[blue, thick, only marks, domain = 0:9]
            coordinates {(1,-1)(2,1)(3,-1)(4,1)(5,-1)(6,1)(7,-1)(8,1)(9,-1)}
            node[at = {(axis cs: 2,1.5)}]{$f(n)$};
        % Origine
        \addplot[mark = *] coordinates {(0,0)}
            node[pin = 125: {$O$}]{};
        % Area tra y = 2 ed y = 3
        \addplot[cyan, fill = cyan!50, fill opacity = 0.1]
            coordinates {(0,0.75)(9,0.75)(9,1.25)(0,1.25)(0,0.75)};
        \addplot[teal, fill = teal!50, fill opacity = 0.1]
            coordinates {(0,-0.75)(9,-0.75)(9,-1.25)(0,-1.25)(0,-0.75)};
    \end{axis}
\end{tikzpicture}
$$

È evidente come il $\lim_{n\to{+\infty}}f(n)$ non esista.

### Dimostrazione

Supponiamo per assurdo che una funzione $f:A\to{\mathbb{R}}$ possieda due limiti  $L$ ed $L'$ quando $x$ tende a $+\infty$. Supponendo che entrambi siano valori **finiti**, prendiamo una $\epsilon>0$ molto piccola, perciò siamo certi che $0<\epsilon<\frac{\;|L-L'|\;}{2}$. Ora, per valori di $x$ molto grandi, la funzione deve essere compresa tra le rette orizzontali $y=L+\epsilon,y=L-\epsilon$ e contemporaneamente anche tra le rette orizzontali $y=L'+\epsilon,y=L'-\epsilon$ il che è una contraddizione, dal momento che la funzione dovrebbe associare allo stesso valore di $x$ due immagini.

Grazie a questo ragionamento si prova che sono assurdi anche i casi $L$ finito, $L'=\pm{\infty}$ ed $L=\pm{\infty},L'=\mp{\infty}$.

## Teorema di algebra dei limiti

Siano $f,g:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato superiormente. Supponiamo che i seguenti limiti:
$$
F\coloneqq{\lim_{x\to{+\infty}}f(x)},\;
G\coloneqq{\lim_{x\to{+\infty}}g(x)}
$$

Esistano e siano finiti, allora possiamo affermare che:
$$
\begin{array}{rcl}
    \lim\limits_{x\to{+\infty}}&(f(x)+g(x))&=F+G\\
    \lim\limits_{x\to{+\infty}}&(f(x)-g(x))&=F-G\\
    \lim\limits_{x\to{+\infty}}&f(x)\;g(x)&=FG\\
    \lim\limits_{x\to{+\infty}}&\frac{f(x)}{g(x)}&=\frac{F}{G}
\end{array}
$$

Purché nell'ultimo caso $G\neq{0}$.

Il teorema viene esteso parzialmente, in alcuni casi dove $F$ oppure $G$ sono infiniti:
$$
\begin{array}{rcl}
    F+\infty=&+\infty&\forall{F\in{\mathbb{R}}},\\
    F-\infty=&-\infty&\forall{F\in{\mathbb{R}}},\\
    +\infty+\infty=&+\infty,&\\
    -\infty-\infty=&-\infty,&\\
    \infty\cdot{\infty}=&\infty,&\\
    \frac{F}{\infty}=&0&\forall{F\in{\mathbb{R}}},\\
    \frac{F}{0}=&\infty&\forall{F\in{\mathbb{R}\setminus{\{0\}}}},\\
    \frac{0}{\infty}=&0,&\\
    \frac{\infty}{0}=&\infty,&
\end{array}
$$

Il segno dei prodotti e dei rapporti viene determinato secodo le regole usuali.

*Nota bene*

> Il teorema **non** si può applicare con le *forme indeterminate*:
$$
\begin{array}{rccl}
    +\infty-\infty,&0\cdot{\infty},&\frac{0}{0},&\frac{\infty}{\infty}
\end{array}
$$

### Dimostrazione

Considerando il caso $\lim_{x\to{+\infty}}(f(x)+g(x))$ nel caso in cui i due limiti $F,G$ siano entrambi finiti.

Fissiamo quindi $\epsilon>0$, e per definizione di limite sappiamo che esiste $K_f>0\tc{\forall{x\in{A}}}$ con $x\geq{K_f}$:
$$
F-\frac{\epsilon}{2}\leq{f(x)\leq{F+\frac{\epsilon}{2}}}
$$

Allo stesso modo, esiste $K_g>0\tc{\forall{x\in{A}}}$ con $x\geq{K_g}$:
$$
G-\frac{\epsilon}{2}\leq{g(x)\leq{G+\frac{\epsilon}{2}}}
$$

Definiamo $K\coloneqq{\max{(K_f,K_g)}}$ e prendiamo un qualsiasi $x\in{A}$ con $x>K$, allora:
$$
\begin{gathered}
    f(x)+g(x)\leq{(F+\frac{\epsilon}{2})+(G+\frac{\epsilon}{2})}=F+G+\epsilon\\
    f(x)+g(x)\geq{(F-\frac{\epsilon}{2})+(G-\frac{\epsilon}{2})}=F+G-\epsilon\\[5pt]\hline\\
    F+G-\epsilon\leq{f(x)+g(x)\geq{F+G+\epsilon}}
\end{gathered}
$$

#### Esempio

Dato il limite $\lim\limits_{x\to{+\infty}}(2+\frac{1}{x})$, vogliamo calcolarne il valore.

Svolgimento:
$$
\begin{aligned}
    \lim_{x\to{+\infty}}(2+\frac{1}{x})
    &=\lim_{x\to{+\infty}}2+\lim_{x\to{+\infty}}\frac{1}{x}\\
    &=\lim_{x\to{+\infty}}2+0=2+0=2
\end{aligned}
$$

Grazie al teorema di algebra dei limiti possiamo separare il limite della somma nella somma dei limiti. Successivamente otteniamo il limite di $\frac{1}{x}$ con $x$ tendente ad infinito, e sempre grazie al teorema di algebra dei limiti possiamo affermare che è zero. Infine il limite della funzione costante equivale a due, perciò otteniamo la somma tra due e zero.

#### Esercizio

Dato il limite $\lim\limits_{x\to{+\infty}}(x^2+1)^2$, vogliamo calcolarne il valore.

Svolgimento:
$$
\begin{aligned}
    \lim_{x\to{+\infty}}(x^2+1)^2
    &=\lim_{x\to{+\infty}}(x^2+1)\cdot{\lim_{x\to{+\infty}}(x^2+1)}\\
    &=(+\infty)\cdot{(+\infty)}=+\infty
\end{aligned}
$$

Grazie al teorema di algebra dei limiti possiamo separare il limite del prodotto, nel prodotto dei limiti. Successivamente risolviamo i due limiti che valgono entrambi $+\infty$. Infine, sempre grazie al teorema di algebra dei limiti moltiplichiamo tra loro i due infiniti applicando le regole del segno.

## Teorema di monotonia

Sia $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato superiormente ed $f$ monotona. Allora il limite per $x\to{+\infty}$ di $f$ esiste ed è:
$$
\lim_{x\to{+\infty}}f(x)=
\begin{dcases}
    \sup{\{f(x):x\in{A}\}}&\text{se $f$ cresce}\\
    \inf{\{f(x):x\in{A}\}}&\text{se $f$ descresce}    
\end{dcases}
$$

### Dimostrazione

Considerando $f$ **non decrescente**, sia:
$$
L\coloneqq{\sup{\{f(x):x\in{A}\}}}
$$

In base all'insieme $A$, il valore $L$ potrebbe essere un valore finito o meno. Supponendo che sia finito, allora fissiamo $\epsilon>0$ arbitrario. Per definizione $L$ è il **minimo dei maggioranti** di $\{f(x):x\in{A}\}$, dunque $L-\epsilon<L$ **non** è a sua volta un maggiorante, questo significa che esiste $K\in{A}\tc{f(K)\geq{L-\epsilon}}$.

Prendiamo ora un qualsiasi $x\in{A}$ con $x\geq{K}$, poiché in questo caso abbiamo considerato $f$ non decrescente, otteniamo:
$$
f(x)\geq{f(K)\geq{L-\epsilon}}
$$

Nello stesso momento però, $L$ è maggiorante di $\{f(x):x\in{A}\}$, pertanto:
$$
f(x)\leq{L<L-\epsilon}
$$

Per cui il teorema di monotonia è dimostrato $\square$.

#### Esempio

Dato il limite $\lim_{x\to{}+\infty}\log{x}$, dimostrare che il suo valore è $+\infty$.

Svolgimento:
$$
\begin{aligned}
    \{\log{x}:x>0\}
    &\supseteq{\{\log{(e^n)}:n\in{\mathbb{N}},n\geq{1}\}}\\
    &=\{n\log{e}:n\in{\mathbb{N}},n\geq{1}\}\\
    &=\{n:n\in{\mathbb{N}},n\geq{1}\}
\end{aligned}
$$

Dimostrando $\sup{\{\log{x}:x>0\}}=+\infty$, dimostriamo che l'insieme dei valori assunti dal logaritmo è **illimitato superiormente**, e allora grazie al teorema di monotonia segue che $\log{x}\to{+\infty}$ per $x\to{+\infty}$.

Infatti, l'ultimo insieme $\{n:n\in{\mathbb{N}},n\geq{1}\}$ è non limitato superiormente per il postulato di Eudosso-Archimede, pertanto neppure $\{\log{x}:x>0\}$ lo è $\square$.

## Teorema del confronto (o carabinieri)

Siano $f,g,h:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$, supponiamo che $f(x)\leq{g(x)\leq{h(x)}}\;\forall{x\in{A}}$ e che i limiti esistano e siano uguali fra loro, cioè:
$$
\lim\limits_{x\to{+\infty}}f(x)=\lim\limits_{x\to{+\infty}}h(x)=L
$$

Allora anche possiamo certamente affermare che $\lim\limits_{x\to{+\infty}}g(x)=L$.

### Dimostrazione



## Successione

Una funzione che ha come dominio $\mathbb{N}$ (oppure $\mathbb{N}\setminus{0}$) e codominio l'insieme dei reali, viene chiamata *successione di numeri reali*.

Tradizionalmente, al posto di scrivere $a:\mathbb{N}\to{\mathbb{R}},\;a(n)\coloneqq{n^2+1}\;\forall{n}$, è di uso comune la notazione:
$$
\{a_n\}_{n\in{\mathbb{N}}},\;a_n\coloneqq{n^2+1}\;\forall{n}
$$

Si dice che una successione $\{a_n\}$ è:
$$
\begin{dcases}
    \text{Convergente}\\
    \text{Infinitesima}\\
    \text{Positivamente divergete}\\
    \text{Negativamente divergente}\\
    \text{Oscillante}
\end{dcases}
\text{se il limite}
\lim\limits_{n\to{+\infty}}a_n\;
\begin{dcases}
\text{Esiste ed è finito}\\
\text{Esiste ed è $0$}\\
\text{Esite ed è $+\infty$}\\
\text{Esiste ed è $-\infty$}\\
\text{Non esiste}
\end{dcases}
$$

#### Esempio

Dato un numero reale $k>0$, definiamo la successione $a_n\coloneqq{k^n},\;\forall{n\in{\mathbb{N}}}$, abbiamo:

1. Se $k=1$, allora $a_n=1\;\forall{n\in{\mathbb{N}}}$ e quindi $a_n\to{1}$ per $n\to{+\infty}$

2. Se $k>1$, allora $\lim\limits_{x\to{+\infty}}a_n=\sup{\{k^n:n\in{\mathbb{N}}\}}=+\infty$ e quindi $a_n$ è strettamente crescente

3. Se $0<k<1$, allora $\lim\limits_{n\to{+\infty}}a_n=\inf{\{k^n:n\in{\mathbb{N}}\}}=-\infty$ e quindi $a_n$ è strettamente decrescente.

\newpage

# Esercizi aggiuntivi

#### Esercizio

Dati un numero reale $k<0$, e la successione $a_n\coloneqq{k^n},\;\forall{n\in{\mathbb{N}}}$, determinare se questa è convergente, infinitesima, divergente od osccillante.

Svolgimento:
$$
\lim\limits_{n\to{+\infty}}(-k)^n\;\text{non esiste}
$$

Perciò la successione è oscillante come per la funzione $f:\mathbb{N}\to{\mathbb{R}},\;f(n)\coloneqq{(-1)^n}$.