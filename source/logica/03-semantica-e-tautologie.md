---
title: Semantica e tautologie
header-includes:
  - \usepackage{mathtools}
  - \usepackage{stmaryrd}
  - \usepackage{cancel}
---

\newcommand{\limplies}{\rightarrow}
\newcommand{\val}[1]{\llbracket\,#1\,\rrbracket}
\newcommand{\taut}{\vDash}

- [Valutazione](#valutazione)
  - [Valutazione atomica](#valutazione-atomica)
          - [Nota bene](#nota-bene)
    - [Teorema](#teorema)
  - [Tautologia](#tautologia)
      - [Esempio](#esempio)
      - [Esercizio](#esercizio)
    - [Contromodello](#contromodello)
      - [Esempio](#esempio-1)
    - [Tavola di verità](#tavola-di-verità)
          - [Nota bene](#nota-bene-1)
    - [Soddisfacibilità](#soddisfacibilità)
          - [Nota bene](#nota-bene-2)

# Valutazione

Una proposizione può assumere solamente due valori: vero o falso, l'azione di determinare il valore di una proposizione viene chiamata *valutazione*. Una valutazione è del tipo:

$$
\mathcal{V}:PROP\to\{0,1\}
$$

e **deve** assumere come valori:

1. $\mathcal{V}(\bot)=0$

2. $\mathcal{V}(\phi\land\psi)=1\iff\mathcal{V}(\phi)=1\text{ and }\mathcal{V}(\psi)=1$

3. $\mathcal{V}(\phi\lor\psi)=1\iff\mathcal{V}(\phi)=1\text{ or }\mathcal{V}(\psi)=1$

4. $\mathcal{V}(\phi)=1\iff\mathcal{V}(\neg\phi)=0$

5. $\mathcal{V}(\phi\limplies\psi)=1\iff\mathcal{V}(\phi)=0\text{ or }\mathcal{V}(\psi)=1$

## Valutazione atomica

Una funzione $v$ è detta valutazione atomica se $v:AT\to\{0,1\}$ e se $v(\bot)=0$.

Data una valutazione atomica $v$, esiste ed è unica una valutazione $\val{\cdot}_v:PROP\to\{0,1\}$ tale che $\val{\phi}_v=v(\phi)$ per $\phi\in{AT}$.

###### Nota bene

> Il valore di una proposizione è univocamente identificato dal valore dei suoi atomi.

Infatti:

$$
\val{\alpha\lor\beta}_v=1\iff\val{\alpha}_v=1\text{ or }\val{\beta}_v=1
$$

### Teorema

Sia $\phi$ una proposizione e sia $\phi^{at}=\{p\,|\,p\in{AT},\,p\in{Sub(\phi)}\}$.

Siano $v_1$ e $v_2$ due valutazioni atomiche tali che $\forall{p}\in\phi^{at}v_1(p)=v_2(p)$, allora possiamo affermare che: $\val{\phi}_{v_1}=\val{\phi}_{v_2}$.

## Tautologia

La proposizione $\alpha$ viene chiamata *tautologia* se e solamente se $\forall{v}\val{\alpha}_v = 1$, per cui scriviamo:

$$
\taut{\alpha}\iff\forall{v}\val{\alpha}_v=1
$$

#### Esempio

Vogliamo dimostrare che $\taut{\alpha\limplies\alpha}$, e cioè che $\forall{v}\val{\alpha\limplies\alpha}_v=1$, quindi:

$$
\begin{aligned}
    \forall{v}\val{\alpha\limplies\alpha}_v=1
    &\iff\val{\alpha}_v=0\text{ or }\val{\alpha}=1\\
    &\implies{T}
    &\square
\end{aligned}
$$

#### Esercizio

Vogliamo dimostrare che $\taut{\alpha\limplies(\beta\limplies\alpha)}$, quindi:

$$
\begin{aligned}
    \forall{v}\val{\alpha\limplies(\beta\limplies\alpha)}_v=1
    &\iff\val{\alpha}_v=0\text{ or }\val{\beta\limplies\alpha}=1\\
    &\iff\underline{\val{\alpha}_v=0}\text{ or }\val{\beta}_v=0\text{ or }\underline{\val{\alpha}_v=1}\\
    &\implies{T}
    &\square
\end{aligned}
$$

### Contromodello

Per dimostrare che una proposizione **non** è una tautologia occorre ricercare un'istanza di $\phi$ e una valutazione tali per cui:

$$
\exists{v},\val{\phi}_v=0
$$

#### Esempio

Data la proposizione $p_0\limplies(p_0\land{p_1})$, devono esistere delle istanze di $p_0,p_1$ e una valutazione $v$ tale per cui $\val{p_0\limplies(p_0\land{p_1})}_v=0$.

Ipotizzando $\val{p_0}_v=1,\val{p_1}_v=0$ si ottiene:

$$
\begin{aligned}
    \val{p_0\limplies(p_0\land{p_1})}_v=0
    &\iff\val{p_0}_v=1\text{ and }\val{p_0\land{p_1}}_v=0\\
    &\iff\val{p_0}_v=1\text{ and }(\cancel{\val{p_0}_v=0}\text{ or }\val{p_1}_v=0)\\
    &\iff\val{p_0}_v=1\text{ and }\val{p_1}_v=0)\\
    &\implies{T}
    &\square
\end{aligned}
$$

In altre parole, esiste una valutazione $v$ che grazie al valore che assume sugli atomi, fa risultare l'intera proposizione zero.

### Tavola di verità

Un altro modo per esprimere questo concetto è la tavola di verità:

$p_0$   $p_1$   $p_0\land{p_1}$ $p_0\limplies(p_0\land{p_1})$
------- ------- --------------- -----------------------------
0       0       0               1
0       1       0               1
**1**   **0**   **0**           **0**
1       1       1               1

###### Nota bene

> Le dimensioni di una tavola di verità aumentano al crescere del rango della proposizione che si sta esaminando, quindi in presenza di una proposizione troppo complessa, si dice che il problema è *intrattabile*.

### Soddisfacibilità

La proposizione $\alpha$ è detta soddisfacibile quando:

$$
\exists{v}\val{\alpha}_v=1
$$

Quindi $\alpha$ non è una tautologia, ma è vera per almeno una valutazione.

###### Nota bene

> Gli unici algoritmi noti per determinare se una proposizione è soddisfacibile sono esponenziali al numero dei simboli.