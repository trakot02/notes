---
title: Derivazioni
---

\newpage

# Deduzione

Dedurre significa riuscire a dimostrare qualcosa partendo da un insieme di ipotesi. Infatti *ipotesi* è ciò che **si assume essere vero**, mentre *tesi* è ciò che **si vuole dimostrare** dalle ipotesi.

In simboli scriviamo:
$$
\left.
    \begin{prooftree}
        \hypo{\text{Ipotesi}}
        \infer[no rule]1{\mathcal{D}}
        \infer[no rule]1{\text{Tesi}}
    \end{prooftree}
\;\;\right\}=\text{Derivazione}
$$

La derivazione può anche essere chiamata *deduzione* o *dimostrazione* ed è la formalizzazione del concetto di dimostrazione. Al contrario, la semantica, cioè conseguenze logiche e tautologie rappresentano le dimostrazioni di tipo matematico, ad esempio:
$$
\underbrace{\;\Gamma,\lnot\alpha\taut{\bot}\;}_{\text{Ipotesi}}\implies\underbrace{\;\Gamma\taut{\alpha}\;}_{Tesi}
$$

## Deduzione naturale

La deduzione naturale è il processo deduttivo che riguarda i connettivi proposizionali $\land,\lor,\limp$ e serve per dimostrare tautologie senza utilizzare i principi della semantica.

Per indicare una derivazione di $\beta$ scriviamo:
$$
\begin{prooftree}
    \hypo{\alpha_1,\dots,\alpha_n}
    \infer[no rule]1{\mathcal{D}}
    \infer[no rule]1{\beta}
\end{prooftree}
$$

Dove le proposizioni $\alpha_i$ potrebbero far parte delle ipotesi della derivazione di $\beta$, non indica che siano effettivamente presente o che debbano esserlo.

Invece, per indicare *l'insieme delle ipotesi* della derivazione $\mathcal{D}$ scriviamo:
$$
\hp(\mathcal{D})=\{\dots\}
$$

### Derivazione minima

La derivazione più semplice che si possa creare è $\alpha$ stessa, perché ipotesi e tesi coincidono. In altre parole, significa che $\alpha\implies\alpha$ ed è inconfutabile.

## Regole di derivazione

Quando si opera con delle deduzioni naturali esistono delle regole per eliminare od introdurre i vari connettivi logici.

### Eliminazione dell'implicazione

L'eliminazione dell'implicazione è una regola binaria che permette di togliere l'implicazione nel risultato della derivazione. Si scrive nel modo seguente:
$$
\mathcal{D}=\left[\;
    \begin{prooftree}
        \hypo{\alpha}
        \hypo{\alpha\limp\beta}
        \infer2[$(\limp{E})$]{\beta}
    \end{prooftree}
\right.
$$

### Introduzione dell'implicazione

L'introduzione dell'implicazione è una regola unaria, che permette di inserire una nuova implicazione nel risultato della derivazione. Dobbiamo supporre che tra le ipotesi della derivazione di $\beta$ vi sia anche $\alpha$, per cui possiamo scrivere:
$$
\bar{\mathcal{D}}=\left[\;
    \begin{prooftree}
        \hypo{[\alpha^1]}
        \infer[no rule]1{\mathcal{D}}
        \infer[no rule]1{\beta}
        \infer1[$(\limp{I})^1$]{\alpha\limp\beta}
    \end{prooftree}
\right.
$$

Perciò si diramano due possibilità:

1. La proposizione $\alpha$ è realmente in $\hp(\mathcal{D})$

    Allora possiamo dire che $\alpha$ è stata *scaricata* o *cancellata*, cioè l'abbiamo utilizzata e ora non fa più parte delle ipotesi di $\bar{\mathcal{D}}$.
    $$
    \hp(\bar{\mathcal{D}})=\hp(\mathcal{D})\setminus\{\alpha\}
    $$

2. La proposizione $\alpha$ non fa parte di $\hp(\mathcal{D})$

    Allora la formula è stata indebolita:
    $$
    \valu{\beta}_v=1\implies\underbrace{\;\valu{\alpha\limp\beta}_v=1\;}_{\valu{\alpha}_v=0\text{ or }\underline{\valu{\beta}_v=1}}
    $$

### Introduzione dell'and

L'introduzione dell'and è una regola binaria, che permette di inserire una nuova and nel risultato della derivazione. Si scrive nel modo seguente:
$$
\mathcal{D}=\left[\;
    \begin{prooftree}
        \hypo{\alpha}
        \hypo{\beta}
        \infer2[$(\land{\;I})$]{\alpha\land\beta}
    \end{prooftree}
\right.
$$

### Eliminazione dell'and

L'eliminazione dell'and è una regola unaria che permette di togliere l'and ed uno dei due congiunti nel risultato della derivazione. Possiamo scrivere:
$$
\mathcal{D}_a=\left[\;
    \begin{prooftree}
        \hypo{\alpha\land\beta}
        \infer1[$(\land{\;E1})$]{\alpha}
    \end{prooftree}
\right.
\qquad
\mathcal{D}_b=\left[\;
    \begin{prooftree}
        \hypo{\alpha\land\beta}
        \infer1[$(\land{\;E2})$]{\beta}
    \end{prooftree}
\right.
$$

## Teoremi

Possiamo dire di aver dimostrato l'ipotesi $\alpha$ se esiste una sua derivazione $\mathcal{D}$ tale per cui $\hp(\mathcal{D})=\emptyset$. Dunque possiamo dire che $\alpha$ è un *teorema* e lo indichiamo con:
$$
\theo{\alpha}
$$

Perciò, possiamo dire che $\alpha\limp(\beta\limp(\alpha\land\beta))$ è un teorema dal momento che esiste una sua derivazione priva di ipotesi:
$$
\mathcal{D}=\left[\;
    \begin{prooftree}
        \hypo{[\alpha^2]}
        \hypo{[\beta^1]}
        \infer2[$(\land{\;I})$]{\alpha\land\beta}
        \infer1[$(\limp{I})^1$]{\beta\limp(\alpha\land\beta)}
        \infer1[$(\limp{I})^2$]{\alpha\limp(\beta\limp(\alpha\land\beta))}
    \end{prooftree}
\right.
$$

Di conseguenza, è corretto scrivere $\theo{\alpha\limp(\beta\limp(\alpha\land\beta))}$.

### Correttezza debole

Quando $\alpha$ è dimostrato essere un teorema, allora siamo certi che sempre $\alpha$ è anche una tautologia. Per cui:
$$
\theo{\alpha}\implies\taut{\alpha}
$$

### Completezza debole

Quando $\alpha$ è dimostrato essere una tautologia, allora siamo certi che sempre $\alpha$ è anche un teorema. Per cui:
$$
\taut{\alpha}\implies\theo{\alpha}
$$

## Occorrenze

Data la seguente derivazione come esempio:
$$
\mathcal{D}=\left[\;
    \begin{prooftree}
        \hypo{[\alpha^1]}
        \hypo{[\alpha^1]}
        \infer2[$(\land{\;I})$]{\alpha\land\alpha}
        \infer1[$(\limp{I})^1$]{\alpha\limp(\alpha\land\alpha)}
    \end{prooftree}
\right.
$$

*Nota bene*

> Possono essere ripetute più occorrenze della stessa ipotesi, a patto che quando si scarica tale ipotesi, tutte le sue occorrenze vengano cancellate.

#### Esempio

Dimostrare che se $\taut{\alpha\limp(\beta\limp\alpha)}$ allora esiste una derivazione tale per cui vale $\theo{\alpha\limp(\beta\limp\alpha)}$.

Svolgimento:
$$
\begin{aligned}
    \valu{\alpha\limp(\beta\limp\alpha)}_v=1
    &\iff\valu{\alpha}_v=1\implies\valu{\beta\limp\alpha}_v=1\\
    &\iff\valu{\alpha}_v=0\text{ or }(\valu{\beta}_v=1\implies\valu{\alpha}_v=1)\\
    &\iff\underline{\valu{\alpha}_v=0}\text{ or }\valu{\beta}_v=0\text{ or }\underline{\valu{\alpha}_v=1}\\
    &\implies{Vero}&\square
\end{aligned}
$$

Dato che $\alpha\limp(\beta\limp\alpha)$ è una tautologia, allora siamo sicuri che è un teorema, perciò esiste una sua derivazione senza ipotesi:
$$
\mathcal{D}=\left[\;
    \begin{prooftree}
        \hypo{[\alpha^1]}
        \infer1[$(\limp{I})$]{\beta\limp\alpha}
        \infer1[$(\limp{I})^1$]{\alpha\limp(\beta\limp\alpha)}
    \end{prooftree}
\right.
$$

#### Esercizio

Dimostrare che $\theo{(\alpha\land\beta)\limp(\beta\land\alpha)}$.

Svolgimento:
$$
\mathcal{D}=\left[\;
    \begin{prooftree}
        \hypo{[\alpha\land\beta^1]}
        \infer1[$(\land{\;E2})$]{\beta}
        \hypo{[\alpha\land\beta^1]}
        \infer1[$(\land{\;E1})$]{\alpha}
        \infer2[$(\land{\;I})$]{\beta\land\alpha}
        \infer1[$(\limp{I})^1$]{(\alpha\land\beta)\limp(\beta\land\alpha)}
    \end{prooftree}
\right.\quad\square
$$