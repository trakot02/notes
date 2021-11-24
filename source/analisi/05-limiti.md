---
title: Limiti
---

\newpage

# Calcolo infinitesimale

La definizione di limite è **fondamentale** per l'analisi matematica.

## Limite finito per $x$ tendente a infinito

Sia $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato superiormente, e sia $L$ un numero reale. Si dice che il limite di $f$ per $x$ tendente a $+\infty$ equivale ad $L$ (oppure che $f$ tende ad $L$ per $x$ che tende a $+\infty$), quando:
$$
\begin{gathered}
    \forall{\epsilon>0},\;\exists{K>0}\tc{\forall{x\in{A}\text{ con }x\geq{K}}},\\
    L-\epsilon\leq{\;f(x)\;}\leq{L+\epsilon}
\end{gathered}
$$

### Dimostrazione

Data una $f:\mathbb{N}\setminus{\{0\}}\to{\mathbb{R}}$ come $f(n)=\frac{1}{n}\;\forall{n\in{\mathbb{N}\setminus{\{0\}}}}$, vogliamo dimostrare che $\lim\limits_{n\to+\infty}f(n)=0$.

Fissiamo un $\epsilon>0$ arbitrario, e per definizione di limite, esiste un $K$ intero positivo tale che $0<\frac{1}{\epsilon}\leq{K}$ per il postulato di Eudosso-Archimede.

Quindi fissiamo una $n\in{\mathbb{N}}\tc{n\geq{K}}$:
$$
\begin{gathered}
    \begin{dcases}
        \frac{1}{n}\leq{\frac{1}{K}}\leq{\epsilon}=0+\epsilon\\
        \frac{1}{n}\geq{0}\geq{-\epsilon=0-\epsilon}
    \end{dcases}\\
    \hfill\square
\end{gathered}
$$

Perciò abbiamo verificato che $L-\epsilon\leq{\;f(n)\;}\leq{L+\epsilon}$ con $L=0$ e infatti possiamo scrivere:
$$
\lim_{n\to{+\infty}}\frac{1}{n}=0
$$

*Nota bene*

> Questa scrittura è equivalente a $\frac{1}{n}\tto{0}\text{ per }n\to{+\infty}$.

## Limite infinito per $x$ tendente ad infinito

Sia $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato superiormente. Si dice che il limite di $f$ per $x\to{+\infty}$ equivale a $+\infty$ (oppure che $f$ tende a $+\infty$ per $x\to{+\infty}$), quando:
$$
\forall{M>0},\;\exists{K>0}\tc{\forall{x}\in{A}}\text{ con }\geq{K},f(x)\geq{M}
$$

Similmente si dice che il limite di una funzione equivale a $-\infty$ quando:
$$
\forall{M>0},\;\exists{K>0}\tc{\forall{x}\in{A}}\text{ con }\geq{K},f(x)\leq{-M}
$$

#### Esempio

Data $f:\mathbb{N}\to{\mathbb{R}},\;f(n)=n^2+1\;\forall{n\in{\mathbb{N}}}$, dimostriamo $\lim\limits_{n\to{+\infty}}=(n^2+1)=+\infty$.

*Svolgimento*

> Fissiamo $M>0$ arbitrario, per il quale, dal postulato di Eudosso-Archimede, sappiamo che esiste un $K\in{\mathbb{N}}\tc{K\geq{M}}$. Infine consideriamo $n\in{\mathbb{N}}\text{ con }n\geq{K}$:
$$
\begin{gathered}
    f(n)=n^2+1\geq{K^2+1}\geq{K}\geq{M}\\
    \hfill\square
\end{gathered}
$$

## Limite inesistente

Data $f:\mathbb{N}\to{\mathbb{R}}$ definita come $f(n)\coloneqq{(-1)^n}$, vale a dire:
$$
f(n)\coloneqq{
\begin{dcases}
    +1&\text{n pari}\\
    -1&\text{n dispari}
\end{dcases}}
$$

È evidente come il limite non esiste perché la funzione continua ad alternare valori positivi con valori negativi.

### Dimostrazione

Supponiamo per assurdo che una funzione $f:A\to{\mathbb{R}}$ possieda due limiti  $L$ ed $L'$ quando $x\to{+\infty}$. Supponendo che entrambi siano valori finiti, prendiamo un $\epsilon>0$ molto piccolo, perciò siamo certi che $0<\epsilon<\frac{\;|L-L'|\;}{2}$. Ora, per valori di $x$ molto grandi, la funzione deve essere compresa tra le rette orizzontali $y=L+\epsilon,y=L-\epsilon$ e contemporaneamente anche tra le rette orizzontali $y=L'+\epsilon,y=L'-\epsilon$ il che è una contraddizione, dal momento che la funzione dovrebbe associare allo stesso valore di $x$ due immagini differenti.

Grazie a questo ragionamento proviamo che sono assurdi anche i casi:

- $L\in{\mathbb{R}},\;L'=\infty$
- $L=\pm{\infty},\;L'=\mp{\infty}$.

## Teorema di algebra dei limiti

Siano $f,g:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato superiormente. Supponiamo che i seguenti limiti esistano e siano finiti:
$$
\begin{array}{rl}
    F\coloneqq{\lim\limits_{x\to{+\infty}}f(x)},&G\coloneqq{\lim\limits_{x\to{+\infty}}g(x)}
\end{array}
$$

Allora possiamo affermare che:
$$
\begin{gathered}
    \lim\limits_{x\to{+\infty}}\Big[f(x)+g(x)\Big]=F+G\\
    \lim\limits_{x\to{+\infty}}\Big[f(x)-g(x)\Big]=F-G
\end{gathered}
$$
$$
\begin{gathered}
    \lim\limits_{x\to{+\infty}}\Big[f(x)\;\cdot{\;g(x)}\Big]=F\;\cdot{\;G}\\
    \lim\limits_{x\to{+\infty}}\Big[f(x)\div{g(x)}\Big]=F\div{G}
\end{gathered}
$$

Purché nel caso del rapporto $G\neq{0}$.

Il teorema viene esteso parzialmente, in alcuni casi dove $F$ oppure $G$ sono infiniti:
$$
\begin{array}{cc}
    F+\infty=+\infty\;\;\forall{F\in{\mathbb{R}}},&F-\infty=-\infty\;\;\forall{F\in{\mathbb{R}}},\\
    +\infty+\infty=+\infty,&-\infty-\infty=-\infty,\\
    \infty\cdot{\infty}=\infty,&\\
    \frac{F}{\infty}=0\;\forall{F\in{\mathbb{R}}},&\frac{F}{0}=\infty\;\forall{F\in{\mathbb{R}\setminus{\{0\}}}},\\
    \frac{0}{\infty}=0,&\frac{\infty}{0}=\infty
\end{array}
$$

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

*Svolgimento*
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

*Svolgimento*
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
f(x)\leq{L<L+\epsilon}
$$

Per cui il teorema di monotonia è dimostrato $\square$.

#### Esempio

Dato il limite $\lim_{x\to{}+\infty}\log{x}$, dimostrare che il suo valore è $+\infty$.

*Svolgimento*
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

Fissiamo un $\epsilon>0$ qualsiasi, per definizione di limite troviamo $K_f>0\tc{\forall{x\in{A}}}$ con $x\geq{K_f}$:
$$
L-\epsilon\leq{f(x)\leq{L+\epsilon}}
$$

Allo stesso modo troviamo $K_h>0\tc{\forall{x\in{A}}}$ con $x\geq{K_h}$:
$$
L-\epsilon\leq{h(x)\leq{L+\epsilon}}
$$

Sia quindi $K=\max{(K_f,K_h)}$, comunque preso $x\in{A}\tc{x\geq{K}}$ otteniamo:
$$
\begin{dcases}
    g(x)\leq{h(x)\leq{L+\epsilon}}\\
    g(x)\geq{f(x)\geq{L-\epsilon}}
\end{dcases}\qquad\square
$$

### Variante

Date $f,g:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$:
$$
\begin{aligned}
    \text{Se}\;f(x)\geq{g(x)}\text{ e }\lim_{x\to{+\infty}}g(x)=+\infty,&\text{ allora }\lim_{x\to{+\infty}}f(x)=+\infty\\
    \text{Se}\;f(x)\leq{g(x)}\text{ e }\lim_{x\to{+\infty}}g(x)=-\infty,&\text{ allora }\lim_{x\to{+\infty}}f(x)=-\infty\\
\end{aligned}
$$

#### Esempio

Calcolare il limite $\lim\limits_{x\to{+\infty}}\frac{\sin{x}}{x^2+1}$ mediante il teorema del confronto.

*Svolgimento*

> Sappiamo che il limite $\lim\limits_{x\to{+\infty}}(x^2+1)=+\infty$ e anche che $-1\leq{\sin{x}}\leq{1}\;\forall{x\in{\mathbb{R}}}$, infatti:
$$
\begin{gathered}
    \underbrace{\;\frac{-1}{x^2+1}\;}_{-\frac{1}{\infty}=0}\leq{\sin{x}}\leq{\underbrace{\;\frac{1}{x^2+1}\;}_{+\frac{1}{\infty}=0}}\\
    \text{per $x\to{+\infty}$}
\end{gathered}
$$

Di conseguenza, per il teorema del confronto, sappiamo che il risultato del limite è $0$.

#### Esempio

Calcolare il limite $\lim\limits_{x\to{+\infty}}(x^6+\cos^2{(e^x-\log{(|x|)})}$ mediante il teorema del confronto.

*Svolgimento*

> Sappiamo che $x^6\tto{+\infty}$ per $x\to{+\infty}$, di conseguenza:
$$
\underbrace{\;x^6+\cos^2{(\dots)\;}}_{f(x)}
\geq{\underbrace{\;x^6\;}_{g(x)}}\tto{+\infty}\;\text{per $x\to{+\infty}$}
$$

Per cui, sappiamo che il risultato è $+\infty$.

## Limite qualsiasi per $x$ tendente a meno infinito

Sia $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ con $A$ non limitato inferiormente ed $L\in{\mathbb{R}\cup{\{-\infty,+\infty\}}}$. Si dice che:
$$
\begin{gathered}
    \lim_{x\to{-\infty}}f(x)=L\\
    \text{Quando}\\
    \lim_{t\to{+\infty}}f(-t)=L
\end{gathered}
$$

## Limite finito per $x$ tendente ad un valore finito

Dato un valore $x_0\in{\mathbb{R}}$ possiamo definire il limite di una funzione $f$ per $x\to{x_0}$.

### Punto di accumulazione

Dati $A\subseteq{\mathbb{R}}$ e $x_0\in{\mathbb{R}}$, chiamiamo $x_0$ *punto di accumulazione* se:
$$
\begin{gathered}
    \forall{\epsilon>0},\exists{x\in{A}}\tc{x\ne{x_0}},\\
    x_0-\epsilon\leq{x}\leq{x_0+\epsilon}
\end{gathered}
$$

#### Esempio

- $0$ è un punto di accumulazione dell'intervallo $(0,1)$
- Non esiste alcun punto di accumulazione di $\mathbb{N}$
- L'unico punto di accumulazione di $\{\frac{1}{n}:n\in{\mathbb{Z}},n\geq{1}\}$ è $0$.

*Nota bene*

> Possiamo definire il limite di una funzione per $x\to{x_0}$ se e solamente se $x_0$ è punto di accumulazione del suo dominiio.

Siano $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ ed $x_0\in{\mathbb{R}}$ punto di accumulazione di $A$, quindi si dice che $\lim\limits_{x\to{x_0}}f(x)=L$ quando:
$$
\begin{gathered}
    \forall{\epsilon>0},\exists{\delta>0}\tc{\forall{x\in{A}}}\text{ con }x\ne{x_0}\text{ e }\\
    x_0-\delta\leq{x}\leq{x_0+\delta}\text{ vale }\\
    L-\epsilon\leq{\;f(x)\;}\leq{L+\epsilon}
\end{gathered}
$$

## Limite infinto per $x$ tendente ad un valore finito

Si dice che $\lim\limits_{x\to{x_0}}f(x)=+\infty$ quando:
$$
\begin{gathered}
    \forall{\epsilon>0},\exists{\delta>0}\tc{\forall{x\in{A}}}\text{ con }x\ne{x_0}\text{ e },\\
    x_0-\delta\leq{x}\leq{x_0+\delta},\text{ vale }f(x)\geq{M}
\end{gathered}
$$

Similmente si dice che vale $-\infty$ quando:
$$
\begin{gathered}
    \forall{\epsilon>0},\exists{\delta>0}\tc{\forall{x\in{A}}}\text{ con }x\ne{x_0}\text{ e },\\
    x_0-\delta\leq{x}\leq{x_0+\delta},\text{ vale }f(x)\leq{-M}
\end{gathered}
$$

Ovviamente il limite può anche non esistere, ma se esiste è unico. Inoltre per definizione $\lim\limits_{x\to{x_0}}f(x)$ non dipende dal valore $f(x_0)$ indipendentemente che la funzione sia definita o meno in quel punto.

#### Esempio

Data la funzione $f:\mathbb{R}\to{\mathbb{R}},\;f(x)\coloneqq{x}\;\forall{x\in{\mathbb{R}}}$ e dato $x_0\in{\mathbb{R}}$. Vogliamo calcolare  il limite $\lim\limits_{x\to{x_0}}x$.


Prendiamo $\epsilon>0$ e definiamo $\delta\coloneqq{\epsilon}$, infine consideriamo un $x\in{\mathbb{R}}$ qualsiasi con $x\ne{x_0}$. Per definizione ottengo $x_0-\delta\leq{x}\leq{x_0+\delta}$ e devo dimostrare che vale $x_0-\epsilon\leq{x}\leq{x_0+\epsilon}$.

In questo caso essendo $f(x)=x$ e $\epsilon=\delta$ è dimostrato tautologicamente.

#### Esempio

Data la funzione $g:\mathbb{R}\to{\mathbb{R}},\;g(x)\coloneqq{\begin{dcases}x&\text{se $x\ne{3}$}\\57&\text{se $x=3$}\end{dcases}}$. Vogliamo calcolare il limite.
$$
\begin{gathered}
    \lim_{x\to{3}}g(x)=\lim_{x\to{3}}x=3\\
    \lim_{x\to{}4}g(x)=\lim_{x\to{4}}x=4
\end{gathered}
$$

Infine i teoremi di algebra dei limiti e del confronto si possono estendere anche per $x\to{x_0}$.

## Limiti unilateri

Sia $f:A\subseteq{\mathbb{R}}\to{\mathbb{R}}$ e $x_0$ un punto di accumulazione di $A$, si usa scrivere:
$$
\lim_{x\to{x_0^+}}f(x)\coloneqq{\lim_{x\to{x_0}}f^+(x_0)}
$$

Dove $f^+:A\cap{(x_0,+\infty)\to\mathbb{R}},\;f^+(x)\coloneqq{f(x)\;\forall{x\in{A\cap{(x_0,+\infty)}}}}$. Similmente:
$$
\lim_{x\to{x_0^-}}f(x)\coloneqq{\lim_{x\to{x_0}}f^-(x_0)}
$$

Dove  $f^-:A\cap{(-\infty,x_0)\to\mathbb{R}},\;f^-(x)\coloneqq{f(x)\;\forall{x\in{A\cap{(-\infty,x_0)}}}}$.

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

*Svolgimento*
$$
\lim\limits_{n\to{+\infty}}(-k)^n\;\text{non esiste}
$$

Perciò la successione è oscillante come per la funzione $f:\mathbb{N}\to{\mathbb{R}},\;f(n)\coloneqq{(-1)^n}$.

#### Esercizio

Dato $\alpha\in{(-1,1)}$, sia $b_n\coloneqq{\alpha^n}\forall{n\in{\mathbb{N}}}$. Il limite $\lim\limits_{x\to{+\infty}}b_n$ esiste? Se si calcolarlo.

#### Esercizio

Esplicitare la definizione di $\lim\limits_{x\to{+\infty}}f(x)=L$ facendo ricorso ai quantificatori.

*Svolgimento*

> Per qualsiasi $\epsilon$ positivo esiste un valore $K$ positivo tale per cui dato un qualsiasi $x$ del dominio maggiore di $K$ (cioè successiva nell'asse delle ascisse) la funzione sia compresa tra le due rette orizzontali $L-\epsilon$ ed $L+\epsilon$.
$$
\begin{gathered}
    \forall{\epsilon>0},\exists{K>0}\tc{\forall{x\in{A}}}\text{ con }x\geq{K},\\
    L-\epsilon\leq{f(x)}\leq{L+\epsilon}
\end{gathered}
$$