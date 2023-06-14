# Answers to the questions of Lecture 05 - Unconditional Secrecy
## Background
Some background about Information Theory basic notions and definitions.
### A Measure for Information
The information of $A$ depends only on the probability $P[A]$, i.e.
$$
i:\mathcal{F}\to \mathbb{R}, \ i(A)=g(P[A])
$$
where $g:[0,1]\to\mathbb{R}$ a suitable function.
Concretely, we define the information of $A$ as
$$
i(A)=\log_{\frac{1}{2}}P[A]
$$
For a discrete random variable $x$ with alphabet $\mathcal{A_x}$, we define the information of $x$ as
$$
i_x:\mathcal{A_x}\to\mathbb{R}, \ i_x(a)=\log_{2}\frac{1}{p_x(a)}
$$
### Entropy
The mean of the information carried by $i_x(x)$ is called the entropy of $x$ and is defined as
$$
H(x)=\mathbb{E}[i_x(x)]=\sum_{a\in\mathcal{A_x}}p_x(a)i_x(a)= \sum_{a\in\mathcal{A_x}}p_x(a)\log_{2}\frac{1}{p_x(a)}
$$
The entropy depends only on the probability distribution of $x$.

`Properties of the entropy`

1. $H(x)\geq 0$ with $H(x)=0$ if and only if $x$ is constant.
2. If all $a\in\mathcal{A}_x$ are equally likely, then $H(x)=\log_{2}|\mathcal{A}_x|$. Otherwise $H(x)<\log_{2}|\mathcal{A}_x|$.

`Guessing Entropy`

$H_{\min}(x) = \min_{a\in\mathcal{A}_x}i_x(a)$ is called the guessing entropy of $x$.

`Collision Entropy`

$H_{\text{coll}}(x) = \log_{\frac{1}{2}}P_\text{coll}(x)$ is called the collision entropy of $x$, where P_coll(x) is the probability that two independent samples of $x$ are equal (sum of squares).

`Joint Entropy`

The joint entropy of two random variables $x$ and $y$ is defined as
$$
H(x,y)=\mathbb{E}[i_{x,y}(x,y)]=\sum_{a\in\mathcal{A}_x}\sum_{b\in\mathcal{A}_y}p_{x,y}(a,b)\log_{2}\frac{1}{p_{x,y}(a,b)}
$$
where $i_{x,y}(x,y)=\log_{2}\frac{1}{p_{x,y}(a,b)}$ is the information of the pair $(x,y)$. Same for $n$ variables.

`Properies of the joint entropy`
1. If $y$ is a function of $x$, then $H(x,y)=H(x)$. Otherwise it holds that $H(x,y)> H(x)$.
2. If $x$ and $y$ are independent, then $H(x,y)=H(x)+H(y)$. Otherwise it holds that $H(x,y)<H(x)+H(y)$.

We have obtained the following chain of inequalities
$$
\max\{H(x),H(y)\}\leq H(x,y)\leq H(x)+H(y)
$$
with the first inequality given by "$x$ or $y$ is a function of the other" and the second by "$x$ and $y$ are independent".

`Conditional Entropy`

Conditional information of $x$ given $y$ is defined as
$$
i_{x|y}:\mathcal{A_x}\to\mathbb{R}, \ \ i_{x|y}(a|b)=\log_{2}\frac{1}{p_{x|y}(a|b)}
$$
The conditional entropy of $x$ given $y$ is defined as
$$
H(x|y)=\mathbb{E}[i_{x|y}(x|y)]=\sum_{(a,b)\in\mathcal{A_x}\times\mathcal{A}_y}p_x(a,b)\log_{2}\frac{1}{p_{x|y}(a|b)}
$$
`Proposition`

Given a discrete random variable $\bold{x}=[x,y]$, we have:
$$
i_{x|y}(a|b)=i_{x,y}(a,b)-i_y(b)
$$
and
$$
H(x|y)=H(x,y)-H(y)
$$
(Just apply the definition of conditional probability and then by linearity of the mean function.)

`Bounds on the conditional entropy`
$$
0\leq H(x|y)\leq H(x)
$$
with the first inequality given by "$x$ is a function of $y$" and the second by "$x$ and $y$ are independent".

### Kullback-Liebler Divergence

The Kullback-Liebler divergence between two probability distributions $p$ and $q$ is defined as

$$
D(p||q)=\sum_{a\in\mathcal{A}}p(a)\log_{2}\frac{p(a)}{q(a)}
$$
Some properties are:
1. $D(p||q)\geq 0$ with $D(p||q)=0$ if and only if $p=q$.
2. $D(p||q)\neq D(q||p)$.
3. $D(p_x||q_y)=H(y)-H(x)$.
4. Chain rule. Relative entropy increas by adding variables to each side:
$$
D(p_{xv}||p_{yz})\geq D(p_{x}||p_{y})
$$
with $p_{v|x} = p_{z|y}$
5. Addittivity on indipendent variables:
$$
D(p_\bold{x}||p_\bold{y})=\sum_{i=1}^n D(p_{x_i}||p_{y_i})
$$

## 1. What is the mutual information between two rvs? State some properities and draw a visualization graph.
The mutual Information between two rvs $x$ and $y$ is:
$$
I(x;y)=H(x)+H(y)-H(x,y)
$$

Some properties are:
- $I(x;y)=H(x)-H(x|y)$
- The mutual information is symmetric

The bound for Mutual Information is:
$$
0\leq I(x;y)\leq \min\{H(x),H(y)\}
$$
respectivelly when the rvs are indipendent and when one is a function of the other.

(Draw Eulero-Venn diagrams)

## 2. Necessary condition for Perfect Secrecy
A necessary condition for perfect secrecy and decodability is
$$
H(k)\geq H(u)
$$
<mark>Proof.</mark>

Assume perfect secrecy holds. So $u$ is independent from $x$.

$$
\begin{align*}
H(u)&=H(u|x)\\
&\leq H(u,k|x)\\
&=H(u|x,k)+H(k|x)\\
&=H(k|x)\\
&\leq H(k)
\end{align*}
$$
`Corollary`
In a system with perfect secrecy:
$$
\log_2|\mathcal{K}|\geq H(k)\geq \log_2|\mathcal{M}|
$$
In order to have perfect secrecy, the key must be at least as long as the message.

## 3. K-L Divergence and Mutual Information
`Foundamental Relation`

Let $x,y$ have joint pmds $p_{xy}$ and let $x',y'$ be independent rvs with $p_{x'}=p_x$ and $p_{y'}=p_y$. Then
$$
D(p_{xy}||p_{x'y'})=I(x;y)
$$

`Independent Lower Bound`
Let $x,y$ have joint pmd $p_{xy}$. For any $x'$ independent from $y$, it holds:
$$
D(p_{xy}||p_{x'y})\geq I(x;y)
$$

## 4. For a mechanism with $I(x;y)\leq\varepsilon$, which is a necessary condition for unconditional secrecy and perfect decodability?
A necessary condition for unconditional secrecy and perfect decodability is:
$$
H(k)\geq H(u)-\varepsilon
$$
<mark>Proof.</mark>

$$
\begin{align*}
H(u)&=H(u|x)+I(u;x)\\
&\leq H(u|x)+\varepsilon\\
&\leq H(k)+\varepsilon
\end{align*}
$$


## [Go back to the main page](../Possible_Questions.md)