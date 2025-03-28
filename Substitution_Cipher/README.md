# Caesar/Substitution Cipher
![image](https://github.com/user-attachments/assets/f5e57510-3980-4a22-ae54-57d53094f1e5)

The Caesar Cipher is a simple and classical substitution cipher where each letter in a message is shifted by a fixed number of places in the alphabet.

Named after Julius Caesar, who used it to encrypt military messages by shifting letters by three places.

Encryption Process: Each letter in the plaintext is replaced with another letter a fixed number of positions down the alphabet. For example, with a shift of 3, "A" becomes "D", "B" becomes "E", etc. The alphabet wraps around, meaning "X" becomes "A", "Y" becomes "B", and so on.

Decryption Process: The reverse operation is applied, shifting letters backward by the same fixed amount to restore the original message.

Key: The shift value (e.g., 3 in Caesar’s case) serves as the cipher’s key, which both sender and receiver must know.

Security:

•  Extremely weak by modern standards.  
•  Can be broken easily using brute force (trying all 25 possible shifts).  
•  Vulnerable to frequency analysis, as letter patterns remain unchanged.  
