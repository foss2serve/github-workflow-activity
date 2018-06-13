# Unstage changes

__Assumptions__

* You are the contributor.
* You have files staged that you do not want committed.

__Instructions__

Depending on which changes you want to unstage, do one of the following.

* Unstage all changes. (Literally type `HEAD` here. `HEAD` means the currently checked out commit.)
    ```
    git reset HEAD
    ```
* Unstage all changes in a directory. (Replace PATH/TO/DIRECTORY with a relative or absolute path to the directory containing the changes you want to unstage; One Windows use backslashes '\\' instead of '/')
    ```
    git reset HEAD -- PATH/TO/DIRECTORY
    ```
* Unstage individual files (... means "and so on"; do not type them literally).
    ```
    git reset HEAD -- FILE1 FILE2 ...
    ```

To avoid this problem in the future, do one of the following.

* Stage files individually from now on.
    ```
    git add FILE1 FILE2
    git add FILE3
    ```
* Or edit `.gitignore` to forever ignore these files and stage again. See Atlassian's article on [.gitignore](https://www.atlassian.com/git/tutorials/saving-changes/gitignore).
    ```
    vim .gitignore      # use your favorite editor
    git add .
    ```
