def caesar_cipher(text, shift, mode):
    """
    Function to perform Caesar Cipher encryption or decryption:
    
    1.The input message to encrypt or decrypt.
    2.The number of positions to shift the letters.
    3.Mode: 1 for encryption, 2 for decryption.
    4.The transformed message.
    """
    result = ""

    # If mode is 2 (decryption), reverse the shift
    if mode == 2:
        shift = -shift

    for char in text:
        if char.isupper():
            # Shift uppercase letters within A-Z
            result += chr((ord(char) + shift - 65) % 26 + 65)
        elif char.islower():
            # Shift lowercase letters within a-z
            result += chr((ord(char) + shift - 97) % 26 + 97)
        else:
            # Keep non-alphabet characters unchanged
            result += char  

    return result


if __name__ == "__main__":
    # Display menu options
    print("Choose an option:")
    print("1. Encryption")
    print("2. Decryption")

    try:
        # Take user input for operation
        choice = int(input("Enter your choice (1 or 2): "))

        if choice not in [1, 2]:
            print("Invalid choice. Please select 1 or 2.")
        else:
            # Get message and shift value from user
            message = input("Enter the message: ")
            shift = int(input("Enter the shift value: "))

            # Perform encryption or decryption
            result = caesar_cipher(message, shift, choice)
            print(f"Output: {result}")

    except ValueError:
        print("Invalid input. Please enter a number.")
