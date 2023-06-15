# Notes and possible questions for the final oral exam of the course "Information Security" at the University of Padua, Italy.

***_Leave a star if you find this repository useful!_***

## How to use this repository
The repository is organized in the following way:
- `Possible_Questions.md` contains a list of possible questions for the final oral exam.
- `Lecture_xx` folders contain the notes for the xx-th lecture with the answers to the questions in `Possible_Questions.md`.

The notes are written in Markdown and the repository is structured to be used with [Visual Studio Code](https://code.visualstudio.com/).

For Launching the notes, you need to modify the `settings.json` file in Visual Studio Code with the following lines before the last curly bracket:

``` 
    ,
    "workbench.editorAssociations": {   
        "*.md": "vscode.markdown.preview.editor",
    }
```

After that, you can run in the Terminal the script `runner.sh` to open the notes in the Visual Studio Code by typing:

```
/bin/bash runner.sh
```

If you want to use another editor, you can find a list of Markdown editors [here](https://www.markdownguide.org/tools/).

## Disclaimer
This repository is not affiliated with the University of Padua, Italy and it is not an official repository of the course "Information Security". The notes and the possible questions are not guaranteed to be correct and complete. Use them at your own risk.
All the schema and the images are taken from the slides of the course.

## How to contribute
If you want to contribute to this repository, please follow these steps:
1. Fork this repository.
2. Clone the forked repository on your local machine.
3. Create a new branch with the name of the lecture you want to add.
4. Add the notes for the lecture in the folder `Lecture_xx` and the answers to the questions in `Possible_Questions.md`.
5. Commit and push the changes to your forked repository.
6. Create a pull request to this repository.

## Contributors
- [Francesco L. De Faveri](https://kekkodf.github.io/kdf.github.io/)

## Other resources
- [DREX - MSN Project](https://github.com/Kekkodf/DREX)
- [RoC Path - Review of Cryptography](https://github.com/Kekkodf/RoC-Path-Information-Security)