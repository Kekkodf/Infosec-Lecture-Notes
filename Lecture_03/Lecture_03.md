# Answers to the questions of Lecture 03
## 1. What is a Distinguisher?
A distinguisher between two random variables $x_0$ and $x_1$ is a system $D$ that is allowed to observe the realization of $y$ without knowing in advanced if $b=0$ or $b=1$.
- $x_0$ and $x_1$ are characterized by the PMDs $p_{x_0},\ p_{x_1}$.
- D can be:
    - deterministic: the decision function is $g:\mathcal{Y}\rightarrow\{0,1\},\ g(y)=\hat{b}$
    - probabilistic: the decision function is the conditional PMD $p_{\hat{b}|y}(\cdot|\cdot)$.

The performances of a distiguisher $D$ is given by the pairs of:
- `correct decision probabilities` $(p_{\hat{b}|b}(0|0), p_{\hat{b}|b}(1|1))$

    (true positives and true negatives).

- `error probabilities` $(p_{\hat{b}|b}(1|0), p_{\hat{b}|b}(0|1))$

    (false positives and false negatives).

The distinguisher advantage between $x_0$ and $x_1$ is defined as:
$$
d_{D}(x_0,x_1)=|p_{\hat{b}|b}(0|0)-p_{\hat{b}|b}(0|1)| = |p_{\hat{b}|b}(1|1)-p_{\hat{b}|b}(1|0)|
$$
- `perfect distingusher`: $d_D(x_0,x_1)=1$
- `dumb distingusher`: $d_D(x_0,x_1)=0$

## 2. Definition of unconditional indistinguishability
Two random variables $x_0$ and $x_1$ are $\varepsilon$-unconditionally indistinguishable if for any distinguisher $D$, it holds
$$
d_{D}(x_0,x_1)\leq\varepsilon
$$
It is possible to see unconditional indistinguishability as a measure of statistical distance between two variables. (draw a picture for perfect distinguishable, $\varepsilon$-distinguishable and indistinguishable variables).

The optimal unconditional distinguisher is the Maximum Likelihood (ML) distinguisher:
$$
g_{ML}(a)=
\begin{cases}
    0 & \text{if } p_{x_0}(a)\geq p_{x_1}(a)\\
    1 & \text{if } p_{x_0}(a)< p_{x_1}(a)
\end{cases}
$$
## 3. Definition of Total Variation Distance
The total variation distance between two random variables $x_0$ and $x_1$ is defined as:
$$
d_V(x_0,x_1)=\sup_S\subset\mathcal{A}|P[x_0\in S]-P[x_1\in S]|
=\frac{1}{2}\sum_{a\in\mathcal{A}}|p_{x_0}(a)-p_{x_1}(a)|
$$
The relationship between the total variation distance and the unconditional indistinguishability is:
$$
d_V(x_0,x_1)\leq\varepsilon\Leftrightarrow d_D(x_0,x_1)\leq\varepsilon
$$
Properties of the total variation distance:
- positivity
- symmetry
- triangular inequality
- monotonicity
- subadditivity with independent random variables

The Total Variation Distance is a measure of statistical distance between two variables. 

## 4. Definition of computational indistinguishability
`Computational Definition`

Two random variables $x_0$ and $x_1$ are $(\varepsilon, T_0)$-computationally indistinguishable if for any distinguisher $D$ with running time $T_D\leq T_0$, it holds
$$
d_{D}(x_0,x_1)\leq\varepsilon
$$

`Asymptotic Definition`

Two sequences of random variables $\{x_{0,n}\}_{n\in\mathbb{N}}$ and $\{x_{1,n}\}_{n\in\mathbb{N}}$ are computationally indistinguishable in the asymptotic formulation if for any polynomial $p(\cdot)$ and $q(\cdot)$, and any sequence of distinguishers $\{D_n\}_{n\in\mathbb{N}}$ with running time $T_{D_n}\leq p(n)$, it holds
$$
d_{D_n}(x_{0,n},x_{1,n})\leq\frac{1}{q(n)}
$$
for all $n$ sufficiently large, i.e. exists a certain $n_{p,q}$ such that after that the inequality holds.

## 5. System computational indistinguishability
`Computational Definition`

Two systems $S_0$ and $S_1$ are $(\varepsilon, T_0)$-computationally indistinguishable if for any distinguisher $D$ with running time $T_D\leq T_0$, it holds
$$
d_{D}(S_0,S_1)\leq\varepsilon
$$

`Asymptotic Definition`
Two sequences of systems $\{S_{0,n}\}_{n\in\mathbb{N}}$ and $\{S_{1,n}\}_{n\in\mathbb{N}}$ are computationally indistinguishable in the asymptotic formulation if for any polynomial $p(\cdot)$ and $q(\cdot)$, and any sequence of distinguishers $\{D_n\}_{n\in\mathbb{N}}$ with running time $T_{D_n}\leq p(n)$, it holds
$$
d_{D_n}(S_{0,n},S_{1,n})\leq\frac{1}{q(n)}
$$
for all $n$ sufficiently large, i.e. exists a certain $n_{p,q, D_n}$ such that after that the inequality holds.

## 6. Define a security measure for a mechanism based on its ideal counterpart.
`Unconditional Definition`

A mechanism $M$ is $\varepsilon$-unconditionally secure if it is $(\varepsilon)$-unconditionally indistinguishable from its ideal counterpart $M^*$.

`Computational Definition`

A mechanism $M$ is $(\varepsilon, T_0)$-computationally secure if it is $(\varepsilon, T_0)$-computationally indistinguishable from its ideal counterpart $M^*$.

`Asymptotic Definition`

A sequence of mechanisms $\{M_n\}_{n\in\mathbb{N}}$ is computationally secure in the asymptotic formulation if it is computationally indistinguishable from its ideal counterpart $\{M_n^*\}$ in the asymptotic formulation.

<mark>Example:</mark> Think about an ideal random function and a pseudo random function if the parameter $k$ is chosen uniformally over $\mathcal{K}$, such as cryptographic hash functions.

## 7. Which is the relationship between $M$ and $M^*$ in terms of security definition?

If a mechanism $M$ is $(\delta, T_0)$-computationally secure and its ideal counterpart $M^*$ offers $(\varepsilon, T_0)$-computationally security against $\mathcal{A}$, then M is $(\varepsilon+\delta, T_0)$-computationally secure against $\mathcal{A}$. 

## 8. Composability Theorems.
$M$ mechanism, $S[M^*]$ mechanism that use the ideal counter part of $M$.

`Theorem (unconditional)`

If $M$ is $\varepsilon_1$-unconditionally secure and $S[M^*]$ is $\varepsilon_2$-unconditionally secure, then $S[M]$ is $\varepsilon_1+\varepsilon_2$-unconditionally secure.

<mark>PROOF.</mark>
By the triangular inequality of the distinguishability, we have
$$
\begin{eqnarray}
d_D(S[M],S[M^*])\leq d_D(S[M],M)+d_D(M,M^*)+d_D(M^*,S[M^*])
\end{eqnarray}
$$

`Theorem (computational)`

If $M$ is $(\varepsilon_1, T_0)$-computationally secure and $S[M^*]$ is $(\varepsilon_2, T_0)$-computationally secure, then $S[M]$ is $(\varepsilon_1+\varepsilon_2, T_0)$-computationally secure.

`Theorem (asymptotic)`

If $M_n$ is computationally secure in the asymptotic formulation and $S_n[M_n^*]$ is computationally secure in the asymptotic formulation, then for any polynomial $p(\cdot)$, $S_n[M_n^{p(n)}]$ is computationally secure in the asymptotic formulation.
