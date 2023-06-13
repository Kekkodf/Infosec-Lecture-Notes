# Answers to the questions of Lecture 02 - Quantitative Definitions and Evaluation of Security

To answer the following questions we need to keep in mind the following background informations.

## Background
We model the attack as a randomized algorithm $A$ that is characterized by the following parameters:
- $S_A$, that is the success probability of the attack.
- $T_A$, that is the execution time of the attack.

We model the security mechanism as a randomized algorithm $M$ that is characterized by the following parameter:
- $T_M$, that is the execution time of the security mechanism.

In general, $S_A,\ T_A,\ T_M$ are all random variables.

The `security provided` by $M$ against the attack $A$ is measured by the conditional probability:
$$
P[S_A; A,M]
$$
with $A$ and $M$ are choises made by the attacker and the defender, respectively.

In general, we can consider a class of attacks $\mathcal{A}$ with a common success probability $S_{\mathcal{A}}$

Then the `security of a mechanism M against the class` $\mathcal{A}$ is measured by the conditional probability:
$$
\sup_{A \in \mathcal{A}} P[S_\mathcal{A}; A,M]
$$
and the `security-level` of $M$ against $\mathcal{A}$ is defined as:
$$
SL(M) = \log_{\frac{1}{2}}\left(\sup_{A \in \mathcal{A}} P[S_\mathcal{A}; A,M]\right)
$$
So basically, the security level of a mechanism is the $\log_{\frac{1}{2}} of the probability of success of the best attack against the mechanism.

## 1. Definition of $\varepsilon$-unconditioal security.
A security mechanism is said to be $\varepsilon$-unconditional secure against a class of attacks $\mathcal{A}$ for a given $\varepsilon>0$ if:
$$
P[S_\mathcal{A}; A,M] \leq \varepsilon \ \ \ \forall A \in \mathcal{A}
$$

## 2. Definition of $(\varepsilon, T_0)$-computational security.
A security mechanism is said to be $(\varepsilon, T_0)$-computationally secure against a class of attacks $\mathcal{A}$ for a given $\varepsilon>0$ and $T_0>0$ if:
$$
P[S_\mathcal{A}\cap \{T_A \leq T_0\}; A,M] \leq \varepsilon \ \ \ \forall A \in \mathcal{A}
$$
That is that the probability of success of any attack in $\mathcal{A}$ that runs in time $T_0$ is at most $\varepsilon$.

## 3. Definition of asymtoptic security.
We now allow a security mechanism to depend on a security parameter $n\in\mathbb{N}$, that can increase at will so that:
- the legitimate operation are feasible.
- the attacker operation soon become infeasible.

A sequence of security mechanisms $\{M_n\}_{n\in\mathbb{N}}$ is said to be asymptotically secure against a class of attacks $\mathcal{A}$ if:

- $\exists$ a polynomial $p(\cdot)$ such that $T_{M_n} \leq p(n)\ \forall n\in\mathbb{N}$.
- $\forall q(\cdot), s(\cdot)$ polynomials and sequence of attacks $\{A_n\}_{n\in\mathbb{N}}\subset \mathcal{A},\ \exists n_0$ such that $\forall n\geq n_0$ we have 
$$
P[S_{\mathcal{A}} \cap \{T_{A_n} \leq q(n)\}; A_n, M_n] \leq \frac{1}{s(n)}
$$
In other words, the probability of success vanisher super polynomially in $n$.

## 4. What is the link between the definitions above and computational complexity theory?
The asymtopical computational security is guaradend iff the class of attacks $\mathcal{A}$ is not in the BPP class (or, more general, in the BQP class).

## [Go back to the main page](../Possible_Questions.md)