---
title: Semantica e tautologie
---

- [Valutazione](#valutazione)
  - [Valutazione atomica](#valutazione-atomica)
          - [Nota bene](#nota-bene)
    - [Lemma](#lemma)
  - [Tautologia](#tautologia)
      - [Esempio](#esempio)
      - [Esercizio](#esercizio)
    - [Contromodello](#contromodello)
      - [Esempio](#esempio-1)
    - [Tavola di verità](#tavola-di-verità)
          - [Nota bene](#nota-bene-1)
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

4. $\mathcal{V}(\phi)=1\iff\mathcal{V}(\lnot\phi)=0$

5. $\mathcal{V}(\phi\limplies\psi)=1\iff\mathcal{V}(\phi)=0\text{ or }\mathcal{V}(\psi)=1$

## Valutazione atomica

Una funzione $v$ è detta valutazione atomica se $v:AT\to\{0,1\}$ e se $v(\bot)=0$.

Data una valutazione atomica $v$, esiste ed è unica una valutazione $\valu{\cdot}_v:PROP\to\{0,1\}$ tale che $\valu{\phi}_v=v(\phi)$ per $\phi\in{AT}$.

###### Nota bene

> Il valore di una proposizione è univocamente identificato dal valore dei suoi atomi.

Infatti:

$$
\valu{\alpha\lor\beta}_v=1\iff\valu{\alpha}_v=1\text{ or }\valu{\beta}t_v=1
$$

### Lemma

Sia $\phi$ una proposizione e sia $\phi^{at}=\{p\,|\,p\in{AT},\,p\in{Sub(\phi)}\}$, siano $v_1$ e $v_2$ due valutazioni atomiche tali che $\forall{p}\in\phi^{at}v_1(p)=v_2(p)$, allora possiamo affermare che: $\valu{\phi}_{v_1}=\valu{\phi}_{v_2}$.

## Tautologia

La proposizione $\alpha$ viene chiamata *tautologia* se e solamente se $\forall{v}\valu{\alpha}_v = 1$, per cui scriviamo:

$$
\taut{\alpha}\iff\forall{v}\valu{\alpha}_v=1
$$ {#eq:tautology_def}

#### Esempio

Vogliamo dimostrare che $\taut{\alpha\limplies\alpha}$, e cioè che $\forall{v}\valu{\alpha\limplies\alpha}_v=1$, quindi:

$$
\begin{aligned}
  \forall{v}\valu{\alpha\limplies\alpha}_v=1
  &\iff\valu{\alpha}_v=0\text{ or }\valu{\alpha}=1\\
  &\implies{T}
  &\square
\end{aligned}
$$

#### Esercizio

Vogliamo dimostrare che $\taut{\alpha\limplies(\beta\limplies\alpha)}$, quindi:

$$
\begin{aligned}
  \forall{v}\valu{\alpha\limplies(\beta\limplies\alpha)}_v=1
  &\iff\valu{\alpha}_v=0\text{ or }\valu{\beta\limplies\alpha}=1\\
  &\iff\underline{\valu{\alpha}_v=0}\text{ or }\valu{\beta}_v=0\text{ or }\underline{\valu{\alpha}_v=1}\\
  &\implies{T}
  &\square
\end{aligned}
$$

### Contromodello

Per dimostrare che una proposizione **non** è una tautologia occorre ricercare un'istanza di $\phi$ e una valutazione tali per cui:

$$
\exists{v},\valu{\phi}_v=0
$$

#### Esempio

Data la proposizione $p_0\limplies(p_0\land{p_1})$, devono esistere delle istanze di $p_0,p_1$ e una valutazione $v$ tale per cui $\valu{p_0\limplies(p_0\land{p_1})}_v=0$.

Ipotizzando $\valu{p_0}_v=1,\valu{p_1}_v=0$ si
ottiene:

$$
\begin{aligned}
  \valu{p_0\limplies(p_0\land{p_1})}_v=0
  &\iff\valu{p_0}_v=1\text{ and }\valu{p_0\land{p_1}}_v=0\\
  &\iff\valu{p_0}_v=1\text{ and }(\cancel{\valu{p_0}_v=0}\text{ or }\valu{p_1}_v=0)\\
  &\iff\valu{p_0}_v=1\text{ and }\valu{p_1}_v=0)\\
  &\implies{T}
  &\square
\end{aligned}
$$

In altre parole, esiste una valutazione $v$ che grazie al valore che assume sugli atomi, fa risultare l'intera proposizione zero.

### Tavola di verità

Un altro modo per esprimere questo concetto è la tavola di verità:

$p_0$   $p_1$   $p_0\land{p_1}$   $p_0\limplies(p_0\land{p_1})$
------- ------- ----------------- ---------------------------------
0       0       0                 1
0       1       0                 1
**1**   **0**   **0**             **0**
1       1       1                 1

Table: tavola di verità. {#tbl: truth_table}

###### Nota bene

> Le dimensioni di una tavola di verità aumentano al crescere del rango della proposizione che si sta esaminando, quindi in presenza di una proposizione troppo complessa, si dice che il problema è *intrattabile*.

La proposizione $\alpha$ è detta soddisfacibile quando:

$$
\exists{v}\valu{\alpha}_v=1
$$ {#eq:satisfiable_def}

Quindi $\alpha$ non è una tautologia, ma è vera per almeno una valutazione.

###### Nota bene

> Gli unici algoritmi noti per determinare se una proposizione è soddisfacibile sono esponenziali al numero dei simboli.
