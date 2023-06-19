# Possible Questions
List of possible questions for the final oral exam.

## Lecture 01 - Introduction
1. Which are the security goals in Information Security?
2. Which are the security threats in Information Security?
3. Which are the security services in Information Security?
4. Which are the security mechanisms in Information Security?
5. What is a network security protocol?

Answers: [Lecture_01.md](./Lecture_01/Lecture_01.md)

## Lecture 02 - Quantitative Definitions and Evaluation of Security
1. Definition of $\varepsilon$-unconditioal security.
2. Definition of $(\varepsilon, T_0)$-computational security.
3. Definition of asymtoptic security.
4. What is the link between the definitions above and computational complexity theory?

Answers: [Lecture_02.md](./Lecture_02/Lecture_02.md)

## Lecture 03 - Composable Definitions of Security
1. What is a Distinguisher?
2. Definition of unconditional indistinguishability.
3. Definition of Total Variation Distance.
4. Definition of computational indistinguishability.
5. System computational indistinguishability
6. Define a security measure for a mechanism based on its ideal counterpart.
7. Which is the relationship between $M$ and $M^*$ in terms of security definition?
8. State and proove the composability theorem.

Answers: [Lecture_03.md](./Lecture_03/Lecture_03.md)

## Lecture 04 - Symmetric Encryption and Perfect Secrecy
1. Which are Goals, Threats, Services and Mechanisms in Simmetric Encryption?
2. What completelly defines a cipher?
3. What is the guessing attack? Explain the differences between `Ignorant`, `Informed` and `Sequential` guessing attacks.
4. What is Perfect Secrecy? What is One-Time Pad? What is the relation between them?

Answers: [Lecture_04.md](./Lecture_04/Lecture_04.md)

## Lecture 05 - Unconditional Secrecy
1. What is the mutual information between two rvs? State some properities and draw a visualization graph.
2. Necessary condition for Perfect Secrecy
3. K-L Divergence and Mutual Information
4. For a mechanism with $I(x;y)\leq\varepsilon$, which is a necessary condition for unconditional secrecy and perfect decodability?

Answers: [Lecture_05.md](./Lecture_05/Lecture_05.md)

## Lecture 06 - Block Ciphers
1. What is a Block Cipher?
2. What is a Feistel Cipher?
3. Talk about AES
4. What is a Feistel Cipher?
5. Explain the block encryption techniques of long messages

Answers: [Lecture_06.md](./Lecture_06/Lecture_06.md)

## Lecture 07 - Attacks on Cipher
1. Which is the classification of attacks against encryption?
2. Brute force strategy.

Answers: [Lecture_07.md](./Lecture_07/Lecture_07.md)

## Lecture 08 - Asymmetric Encryption
1. Why do we need asymmetric encryption?
2. Where does secrecy come from in public key encryption?
3. State the definition of one-way function.
4. RSA cryptosystem.
5. El-Gamal cryptosystem.
6. Eliptic Curve Cryptography.
7. McEliece cryptosystem.

Answers: [Lecture_08.md](./Lecture_08/Lecture_08.md)

## Lecture 09 - Stream Ciphers
1. General Model of a Stream Cipher.
2. Rivest Cipher 4 and Linear Feedback Shift Registers.

Answers: [Lecture_09.md](./Lecture_09/Lecture_09.md)

## Lecture 10 - Physical Layer Secrecy
1. What is the motivation for Physical Layer Secrecy?
2. Unconditional secrecy vs Wiretap channel model.

Answers: [Lecture_10.md](./Lecture_10/Lecture_10.md)

## Lecture 11 - Authentication and Integrity Protection
1. Which are Goals, Threats, Services and Mechanisms in Authentication and Integrity Protection?
2. State the three properties of a Universal Hash Function
3. Theorem of Unconditional security of universal hash functions

Answers: [Lecture_11.md](./Lecture_11/Lecture_11.md)

## Lecture 12-13 - Symmetric Authentication and Integrity Protection
1. What are MACs?
2. Can we use a well designed Decryption function as a Tag function?
3. Which are the differences between CBC-MAC and Cryptographic Hash Functions?
4. Why is cryptographic hashing needed?
5. What is the birthday paradox?

Answers: [Lecture_12-13.md](./Lecture_12-13/Lecture_12-13.md)

## Lecture 14 - Digital Signatures
1. Which are the Goals, Threats, Services and Mechanisms in Digital Signatures?
2. Explain the RSA Digital Signature Scheme
3. Explain the Elgamal Digital Signature Scheme
4. Explain the Elliptic Curve Digital Signature Scheme
5. How to combine different Digital Signature Schemes?

Answers: [Lecture_14.md](./Lecture_14/Lecture_14.md)

## Lecture 15 - Key Management Services
1. Which are the Goals, Threats, Services and Mechanisms in Key Management?
2. How does the Diffie Hellman Key Agreement work?
3. How does the Needham-Schroeder symmetric key protocol work?
4. How does the Needham-Schroeder asymmetric key protocol work?
5. Why the need for PKIs?

Answers: [Lecture_15.md](./Lecture_15/Lecture_15.md)

## Lecture 16-17 - Information Theoretic Key Agreement
1. Which are the differences between Cryptographic and Information Theoretic Key Agreement?
2. See slides.

Answers: [Lecture_16-17.md](./Lecture_16-17/Lecture_16-17.md)

## Lecture 18 - Entity Authentication Protocols
1. Which is the general model for Entity Authentication Protocols?
2. Which are the two types of Entity Authentication Protocols?

Answers: [Lecture_18.md](./Lecture_18/Lecture_18.md)

## Lecture 19 - Secure Random Number Generation
1. What is the motivation for Secure Random Number Generation?
2. What is the difference between a Pseudo Random Number Generator and a True Random Number Generator?
3. Cryptographic Secure PRNGs
4. Deterministic extarctor of randomness.
5. What is the Trevisan's extractor?

Answers: [Lecture_19.md](./Lecture_19/Lecture_19.md)

## Lecture 20 - Privacy Measures and Mechanisms
1. Define Goals, Threats, Services and Mechanisms in Privacy Systems.
2. $k$-Anonymity, $\ell$-Diversity and $t$-Closeness
3. Relationship between definitions of Differential Privacy

Answers: [Lecture_20.md](./Lecture_20/Lecture_20.md)

## Lecture 21 - Secure Positioning: Secure GNSS and Distance Bounding
1. What is GNSS (Global Navigation Satellite System)?
2. What is Galileo OSNMA? Why Digital signature is not enough?
3. What is Distance Bounding? What is the main idea behind it?
4. Differences between Distance fraud, Mafia fraud and Terrorist fraud.

Answers: [Lecture_21.md](./Lecture_21/Lecture_21.md)

## Lecture 22 - Cellular Network Security
1. (2G) Cellular Networks: GSM
2. (3G) Cellular Networks: UMTS
3. (4G) Cellular Networks: LTE
4. (5G) Cellular Networks: 5G

Answers: [Lecture_22.md](./Lecture_22/Lecture_22.md)

## Lecture 23 - TLS
1. What is TLS?
2. TLS Handshake Protocol and Record Protocol.

Answers: [Lecture_23.md](./Lecture_23/Lecture_23.md)