#!/bin/bash                                                                                                                                                                                                

read_input() {
    echo "Select an option: "
    echo "1. Read README.md"
    echo "2. Start reading the notes"
    echo "3. Exit"

    echo "---------------------------------"
    echo -n "Enter your choice [1-3]: "

    read option

    case $option in
        1) read_readme ;;
        2) read_notes ;;
        3) exit_runner ;;
        *) echo "Invalid option" ;;
    esac

    main

}

exit_runner() {
    echo "Bye bye..."
    exit 0
}

read_readme() {
    echo "README.md"
    echo "---------------------------------"
    code README.md --extension vscode.markdown.preview
}

read_notes() {
    echo "Notes"
    echo "---------------------------------"
    code Possible_Questions.md --extension vscode.markdown.preview
}


main() {
    echo " 

#   _____        ___                         ______                       
#  (_____)      / __)                       |  ___ \       _              
#     _   ____ | |__ ___   ___  ____ ____   | |   | | ___ | |_  ____  ___ 
#    | | |  _ \|  __) _ \ /___)/ _  ) ___)  | |   | |/ _ \|  _)/ _  )/___)
#   _| |_| | | | | | |_| |___ ( (/ ( (___   | |   | | |_| | |_( (/ /|___ |
#  (_____)_| |_|_|  \___/(___/ \____)____)  |_|   |_|\___/ \___)____|___/ 
#                                                                         

"
    read_input
}

main