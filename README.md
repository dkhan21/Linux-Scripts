# Linux Scripts Repository

This repository contains a collection of useful Linux scripts that helped me have a better understanding of Shell/Bash Scripting

## Scripts
### [File Analyzer Script](Script1.sh)
- This Bash script takes the name of a file or directory as an argument, determines whether it is a file or directory, and checks the user's permissions on it. If it's a file, it reports the size and categorizes it as "large," "medium," or "small" based on predefined size ranges.
### [Zero-Length File Remover](Script2.sh)
- This Bash script efficiently removes all zero-length ordinary files within a specified directory and its sub-directories. If no directory is provided as an argument, the script defaults to using the current working directory. 
### [Email Extractor Bash Script](Script3.sh)
- The Bash script takes a directory as an argument, recursively searches for text files containing email addresses, extracts unique and valid emails, removes duplicates, and saves the sorted list to "unique_emails.txt" in the script's directory.

## Prerequisites

Make sure you have the following installed on your system:

- Linux operating system
