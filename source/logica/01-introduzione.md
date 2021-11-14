---
title: Introduzione
---

\newpage

# Logica

La logica nasce per formalizzare certi concetti comuni del ragionamento matematico, nonché il suo linguaggio. Per questo la logica permette di determinare ciò che è vero o falso in modo totalmente **non ambiguo**.


## Connettivi logici

I connettivi logici sono quei simboli che permettono di unire più proposizioni tra loro. Di seguito verranno precisati alcuni aspetti dei connettivi *or* e *implies*.

### Connetivo *or*

Data la frase: "Mangio una mela *oppure* una pesca", notiamo che è della forma

$$
(\alpha\lor\beta)
$$

Dove $\alpha,\beta$ sono le due espressioni.

In un dialogo comune il connettivo *or* indica che **solamente una** situazione tra le due può avversarsi, si dice quindi che il connettivo è **esclusivo**. Al contrario in linguaggio matematico, può avversarsi *almeno una* delle due situazioni, si dice quindi che il connettivo *or* è **inclusivo**.

### Connettivo *implies*

Data la frase: "Il sorgere del Sole *implica* che è giunta l'alba", notiamo che è della forma

$$
(\alpha\limplies\beta)
$$

Dove $\alpha,\beta$ sono le due espressioni, e vengono chiamate:

- $\alpha$ la premessa
- $\beta$ la conclusione

Il connettivo *implies* indica che quando la premessa si avvera, allora **deve** avverarsi anche la conclusione, altrimenti l'implicazione non è corretta.

Quando la premessa non si avvera, l'implicazione viene comunque rispettata perché il rapporto tra premessa e conclusione non è stato smentito, infatti considerando l'esempio sopracitato, nel caso in cui il sole non sia ancora sorto, possiamo comunque dire che la frase è corretta.

*Nota bene*

> L'implicazione **non** si avvera quando la premessa è veritiera ma la conclusione no. Questo perché la premessa si è verificata e il legame con la conclusione può essere smentito, per esempio: "Forte pioggia *implica* che il sole sta calando" non è un'implicazione corretta.

Infatti possiamo scrivere che:

$$
(\alpha\limplies\beta)\iff((\lnot\alpha)\lor\beta)
$$ {#eq:impl_def}

In altre parole, un'implicazione è vera quando o non si avvera la premessa, quando la conclusione è corretta, oppure entrambe.

#### Esercizio

Vogliamo semplificare la proposizione $\phi=((\alpha\limplies\beta)\lor(\beta\limplies\alpha))$.

Svolgimento:

$$
\begin{aligned}
  \phi
  &=((\alpha\limplies\beta)\lor(\beta\limplies\alpha))\\
  &=(((\lnot\alpha)\lor\beta)\lor((\lnot\beta)\lor\alpha))\\
  &=(\alpha\lor\beta\lor(\lnot\alpha)\lor(\lnot\beta))\\
  &=T
\end{aligned}
$$ {#eq:impl_example}

Sono presenti tutte le combinazioni di $\alpha$ e $\beta$ e deve avverarsene almeno una per rendere tutto corretto, di conseguenza l'equazione @eq:impl_example è verificata per qualsiasi valore di $\alpha$ e $\beta$.

## Sintassi e semantica

Logica, informatica e linguistica fanno distinzione tra sintassi e semantica, al contrario della matematica. Questo significa che in logica esistono frasi strutturalmente corrette, ma errate dal punto di vista del significato che assumono.

### Linguaggio naturale e artificiale

Logica ed informatica si occupano di linguaggi artificiali, come linguaggio il matematico e i linguaggi di programmazione. Mentre la linguistica si occupa di studiare i vari linguaggi naturali esistenti, cioè le lingue parlate comunemente dagli esseri umani.
