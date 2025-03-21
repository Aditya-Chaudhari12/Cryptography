#!/bin/bash

# Function to perform Caesar Cipher
caesar_cipher() {
    local text="$1"
    local shift="$2"
    local mode="$3"
    local result=""

    # If mode is 2 (decryption), reverse the shift
    if [ "$mode" -eq 2 ]; then
        shift=$(( -shift ))
    fi

    # Loop through each character in the text
    for (( i=0; i<${#text}; i++ )); do
        char="${text:$i:1}"

        # Handle uppercase letters
        if [[ "$char" =~ [A-Z] ]]; then
            new_char=$(printf "%d" "'$char")
            new_char=$(( (new_char + shift - 65) % 26 + 65 ))
            result+=$(printf "\\$(printf %o "$new_char")")

        # Handle lowercase letters
        elif [[ "$char" =~ [a-z] ]]; then
            new_char=$(printf "%d" "'$char")
            new_char=$(( (new_char + shift - 97) % 26 + 97 ))
            result+=$(printf "\\$(printf %o "$new_char")")

        # Keep non-alphabet characters unchanged
        else
            result+="$char"
        fi
    done

    echo "$result"
}

# Display menu options
echo "Choose an option:"
echo "1. Encryption"
echo "2. Decryption"

# Read user choice
read -p "Enter your choice (1 or 2): " choice

# Validate choice
if [[ "$choice" != "1" && "$choice" != "2" ]]; then
    echo "Invalid choice. Please select 1 or 2."
    exit 1
fi

# Read user input
read -p "Enter the message: " message
read -p "Enter the shift value: " shift

# Call the function and display result
output=$(caesar_cipher "$message" "$shift" "$choice")
echo "Output: $output"
