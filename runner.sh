#!/bin/bash

read_input() {
    echo "Do you want to read Possible_Questions.md file? (y/n)"
    read input
    if [ "$input" == "y" ]; then
        code Possible_Questions.md --extension vscode.markdown.preview
    elif [ "$input" == "n" ]; then
        echo "You chose not to read the file"
    else
        echo "Invalid input"
        read_input
    fi
}

main() {
    read_input
    exit 0
}

main