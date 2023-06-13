# Answers to the questions of Lecture 04 - Symmetric Encryption and Perfect Secrecy

## Background
Before answering the questions, we need some assumpions:

- `(perfect reliability)` The receiver must be able to recover the secret message perfectly, i.e. 
$$ \forall k\in\mathcal{K}, D_k = E_k^{-1} $$
- `(Kerckhoff's principle)` The eavesdropper knows the encryption function $E$ and the decryption function $D$, but not the key specific key $k\in\mathcal{K}$.

## 1. Which are Goals, Threats, Services and Mechanisms in Simmetric Encryption?
Symmetric Encryption tries to achieve the security goal of `confidentiality`, fight the treath of `eavesdropping` and provide the service of `secrecy` through the mechanism of `encryption`.

## 2. What completelly defines a cipher?
A cipher is completelly defined by:
- a message space $\mathcal{M}$ (plaintext $u\in\mathcal{M}$);
- a cipher space $\mathcal{X}$ (ciphertext $x\in\mathcal{X}$);
- a key space $\mathcal{K}$ (key $k\in\mathcal{K}$);
- an encryption function $E:\mathcal{K}\times\mathcal{M}\rightarrow\mathcal{X}$;
- a decryption function $D:\mathcal{K}\times\mathcal{X}\rightarrow\mathcal{M}$.

Key and plaintext are random variables with PMDs:
- $p_k:\mathcal{K}\rightarrow[0,1]$;
- $p_u:\mathcal{M}\rightarrow[0,1]$.

So a cipher is defined by the tuple ($\mathcal{M},\mathcal{X},\mathcal{K},E,D$, $p_k,p_u$).

## 3. What is the guessing attack? Explain the differences between `Ignorant`, `Informed` and `Sequential` guessing attacks.
In the guessing attack, the eavsdropper E tries to guess the plaintext $u$ and attempts to guess $\hat{u}\in\mathcal{M}$.

`Ignorant guess`

By ignoring the reading of $x$, the optimal guess for E is 
$$ \hat{u} = \arg\max_{m\in\mathcal{M}}p_u(m) $$
and the probability of success is
$$ \Pr[\hat{u}=u] = \max_{m\in\mathcal{M}}p_u(m) $$

`Informed guess`

By using $x$, the optimal guess for E is
$$ \hat{u} = g(b) = \arg\max_{m\in\mathcal{M}}p_{u|x}(m|b)$$
with $b\in\mathcal{X}$. The probability of success is
$$ \Pr[\hat{u}=u] = P[g(x)=u] = \sum_{b\in\mathcal{X}}P[g(b)=u|x=b]p_x(b)=\sum_{b\in\mathcal{X}}\max_{m\in\mathcal{M}}p_{u|x}(m|b)p_x(b) $$

In general it is not lower than the probability of success of the ignorant guess.

`Sequential guess`

If E can make multiple guesses, she can use the previous guesses to improve the probability of success. The optimal guess is
$$ \hat{u} = 
\begin{cases}
    \arg\max_{m\in\mathcal{M}}p_{u}(m) & \text{if } i=1 \\
    \arg\max_{m\in\mathcal{M}/\{\hat{u}_1,\dots,\hat{u}_{i-1}\}}p_{u}(m) & \text{if } i>1
\end{cases}
$$
for the ignorat guess and for the informed guess it's similar just considering the conditional probabilities.

## 4. What is Perfect Secrecy? What is One-Time Pad? What is the relation between them?
An encryption system is perfect if it provides 0-unconditional security based on indistinguishability, i.e. the plaintext $u$ and the ciphertext $x$ are independent random variables.
$$ \forall u\in\mathcal{M}, x\in\mathcal{X}\ \ p_{x|u}(x|u) = p_x(x) $$
In other words, the cipher is perfect if the optimal informed guess is the same as the optimal ignorant guess.

One-Time Pad is a cipher that provides perfect secrecy. It is defined by:
- $\mathcal{M}=\mathcal{X}=\mathcal{K}=\{0,1\}^n$;
- the key $k$ is chosen uniformly at random in $\mathcal{K}$;
- $E_k(u) = u\oplus k$;
- $D_k(x) = x\oplus k$.

The relation between them is that One-Time Pad is a cipher that provides perfect secrecy.

<mark>Proof.</mark>

Perfect relieability is guaranteed by the existance and uniqueness of the key $k$.

Perfect secrecy is guaranteed by prooving that $p_{u|x}(b,c)=p_u(b)p_x(c)$, i.e. the plaintext $u$ and the ciphertext $x$ are independent random variables.
$$
\begin{align*}
    p_{u|x}(b,c) &= P[u=b|x=c] \\
    &= P[u=b|k=b^{-1}\oplus c] \\
    &= p_u(b)p_k(b^-1\oplus c) \\
    &= \frac{p_u(b)}{|\mathcal{K}|}
\end{align*}
$$
Then,
$$
p_x(c)=\sum_{b\in\mathcal{M}}p_{u,x}(b,c)=\frac{\sum_{b\in\mathcal{M}}p_u(b)}{|\mathcal{K}|}=\frac{1}{|\mathcal{K}|}
$$
This result holds for any $p_u(\cdot)$. So, the cipher is perfect.
## [Go back to the main page](../Possible_Questions.md)