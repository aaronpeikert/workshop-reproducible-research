---
title: "Workshop Reproducible Research"
author: "Aaron"
date: "5/29/2018"
output: ioslides_presentation
---

## Roadmap

1. Install & Setup Git (30min)
2. My Mental Model of Reproducible Research (15-30min)
3. Break (30min)
4. Experimenting

## Requirements

1. RStudio (>1.1.4) & R (>3.4) installed
2. right to install things on your computer
3. optional: the `tidyverse` package
4. this [presentation](https://raw.githubusercontent.com/aaronpeikert/workshop-reproducible-research/master/presentation_git.md)


# Install & Setup Git

## Install Git

1. [File Download](https://git-scm.com/downloads) or Package Manager
   * no GUI or anything else, just git
2. Follow the OS-specific installation process

## Setup Git

1. Open RStudio
2. Click in the Console Pane on Terminal
3. say git who you are through adapting and execute this commands

    ```
    git config --global user.name "John Doe"
    git config --global user.email johndoe@example.com
    ```

5. Restart your computer

## Account GitHub

1. go to [GitHub](https://github.com/)
2. Create a Account
   * with your educational E-Mail adress (e.g. john.doe@hu-berlin.de))
   * above not necesary if you add it in step 3.
3. Login
4. Request the [Student Developer Pack](https://education.github.com/pack)

## SSH Keys

1. Open RStudio
4. Go to Tools -> Global Options -> Git/SVN -> Create RSA Key
2. Click -> View public key -> Ctrl + C
3. go to [GitHub](https://github.com/)
4. Settings -> SSH and GPG keys -> New SSH key -> Ctrl + V
5. Test SSH connection with this command (in the terminal in RStudio)

    ```
    ssh -T git@github.com
    ```

## Clone a first Repo

1. [Open](https://github.com/aaronpeikert/workshop-reproducible-research)
2. Clone or Download
3. **Clone with SSH** (press "Use SSH")
4. Copy link
5. Open RStudio
6. File -> New Project -> Version Control -> Git
7. Insert Link and specify directory (can be anything)
8. Create Project

# How to ask questions?

## Why not "just" ask questions

* this workshop should be fully reproducible itself, including questions & problems
* therefore it would be great if we document them
  * for the future you and for people not attending
* you will learn another GitHub-Feature on the way

## Questions as GitHub Issues

1. go to this [GitHub-Repo](https://github.com/aaronpeikert/workshop-reproducible-research)
2. Click on issues
3. Create a Issue
4. Raise you're hand
5. ask the question
6. Summarize the answer, as a reply to your question
7. If you're happy with the answer close the issue
8. If the issue is not closed in the end of the workshop, I will follow up on it and try to give a better answer
