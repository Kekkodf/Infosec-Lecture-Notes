# Answers to the questions of Lecture 01

## 1. Which are the security goals in Information Security?
The security goals in Information Security are:
- <mark style="background-color: #88b392">Confidentiality</mark>: the information is available only to the intended recivers.
- <mark style="background-color: #88b392">Integrity</mark>: the information is received exactly as it was sent.
- <mark style="background-color: #88b392">Availability</mark>: the service is always available even under attack.
- <mark style="background-color: #88b392">Accountability</mark>: it is always possible to trace the actions of a user.
- <mark style="background-color: #88b392">Privacy</mark>: the information is usedbut not disclosed.

## 2. Which are the security threats in Information Security?
The security threats in Information Security are:
- <mark style="background-color: #ba4141">Eavesdropping</mark>: the attacker can read the confidential information.
- <mark style="background-color: #ba4141">Modification</mark>: the attacker can modify the message in transit.
- <mark style="background-color: #ba4141">DoS</mark>: the attacker can interrupt the service.
- <mark style="background-color: #ba4141">Forgery</mark>: the attacker can forge a fake message.
- <mark style="background-color: #ba4141">Masquerade</mark>: the attacker can impersonate another user.
- <mark style="background-color: #ba4141">Repudiation</mark>: the attacker can deny having sent a message.
- <mark style="background-color: #ba4141">Profiling</mark>: the attacker can profile the user.
- <mark style="background-color: #ba4141">Fingerprint</mark>: identify the user associated to some message.
- <mark style="background-color: #ba4141">Traffic analysis</mark>: the attacker can infer information from the traffic.

## 3. Which are the security services in Information Security?
The security services in Information Security are:
- <mark style="background-color: #2a4a9c">Secrecy</mark>: message is untelligeble for eavsdroppers.
- <mark style="background-color: #2a4a9c">Integrity protection</mark>: make it possible to understand if the message has been modified.
- <mark style="background-color: #2a4a9c">Access control</mark>: protect from DoS.
- <mark style="background-color: #2a4a9c">Message Authentication</mark>: allows to detect forgery.
- <mark style="background-color: #2a4a9c">Entity Authentication</mark>: allows to detect masquerade.
- <mark style="background-color: #2a4a9c">Non-repudiation</mark>: allows to detect repudiation.
- <mark style="background-color: #2a4a9c">Anonymization</mark>: prevets association of a message to a user.
- <mark style="background-color: #2a4a9c">Key management</mark>: ancillary service to cryptographic services.

## 4. Which are the security mechanisms in Information Security?
The security mechanisms in Information Security are:
- <mark style="background-color: #30d135">Encryption</mark>: transformation of the message so that only the indended user can read it.
- <mark style="background-color: #30d135">Digital signature</mark>: string to append to the message that can only be created by the legitimate source but can be verified by anyone.
- <mark style="background-color: #30d135">Intrusion detection</mark>: identify characteristics of malicious activities or anomalies. 
- <mark style="background-color: #30d135">Message autheentication codes</mark>: string to append to the message that only legitimate sender/receiver can create.
- <mark style="background-color: #30d135">Randomization</mark>: events of the same category are randomly permuted to break dependences.
- <mark style="background-color: #30d135">Key agreement</mark>: several parties cooperate to produce a key for inputs for each of them.

## 5. What is a network security protocol?
A layer N security protocol is a mechanism that offers one or more security services that protects the information at layer N and above of a network.