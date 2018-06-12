# Contributor - Work

## A. Create and test a small change

__Assumptions__

* You have the development tools necessary for working on this project install and configured.

__Instructions__

1. Make a small change using your standard development environment (e.g., Atom.io, Notepad++, Eclipse, etc.).

2. Test the change to make sure it works. Again, use whatever development tools you like.

## B. Commit the change

__Assumptions__

* You have a terminal open.
* The terminal is positioned in the root of your local clone.
* The feature branch for the issue you are working on is checked out.

__Instructions__

1. Stage your changes.
    ```
    git add .
    ```
2. Confirm that only files that should be committed are staged.
    ```
    git status
    ```
3. If there are files staged that shouldn't be (e.g., anything that can be generated from source, personal/private configurations or data, etc.) see __Unstage changes__ below. When you are done, return here and go back to step 1.
4. Commit changes and provide a good commit messages.
    ```
    git commit
    ```

## C. Push changes to your fork and update the PR

__Assumptions__

* You have a terminal open.
* The terminal is positioned in the root of your local clone.
* The feature branch for the issue you are working on is checked out.
* You have pushed the feature branch before using the `-u` option so git tracks it.
* You have opened a PR from this branch back to master in upstream.

__Instructions__

1. Push you changes in FEATURE_BRANCH to your fork.
    ```
    git push origin FEATURE_BRANCH
    ```

Congratulations, you have pushed your changes to your fork, and your open PR has been updated with the newly pushed changes.  When you push changes to a branch that is associated with a PR, the PR is automatically updated with the pushed changes!


## D. Unstage changes

__Assumptions__

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

Return to and complete __Commit the change__ above.
