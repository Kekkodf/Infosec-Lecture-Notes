# Answers to the questions of Lecture 07 - Attacks on Cipher
## Which is the classification attacks against encryption?

- <mark>Known ciphertext attack (KCA):</mark> After observing $N$ ciphertexts the attacker aims to find $u_n$ or the key $k$.

- <mark>Known plaintext attack (KPA):</mark> After observing $N-1$ pair of (plaintext, ciphertext) and the ciphertext $x_N$ the attacker aims to find $u_N$ or the key $k$.

- <mark>Chosen plaintext attack (CPA):</mark> The attacker has access to the encoder he can choose $N-1$ plaintexts and observe the corresponding ciphertexts. Then he observe the $N$-th ciphertext $x_N$ and aims to find $u_N$ or the key $k$.

- <mark>Chosen ciphertext attack (CCA):</mark> The attacker has access to the decoder he can choose $N-1$ ciphertexts and observe the corresponding plaintexts. Then he observe the $N$-th ciphertext $x_N$ and aims to find $u_N$ or the key $k$.

The order of strenght is the following:

$$
\text{KCA}\leq\text{KPA}\leq\text{CPA}\leq\text{CCA}
$$

## 2. Define the Brute force attack aka KPA sequential guessing on the key.
Try all possible values of the key $k$ until the correct one is found. The number of possible keys is $2^m$ where $m$ is the length of the key. The complexity of the attack is $O(2^m)$.


## [Go back to the main page](../Possible_Questions.md)