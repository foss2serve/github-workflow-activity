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

## D. Repeat A-C until done

... or until you _think_ you are done, or until want feedback from the maintainer.


## E. Request a review

__Assumptions__

* You have an open PR.
* You are signed into GitHub.

__Instructions__

1. Navigate to your PR on the team's repository on GitHub.
2. Make a comment. In that comment at-mention one of your team-members who will play the role of _matainer_ (e.g., `@person`), and ask them to please review your work.
3. Now have the person who you designated as a _maintainer_ complete [Review a PR]() and return here when you are done.
3. If the _maintainer_ accepted your work by merging it into master in the team repository, go to [Clean up]().
4. If the _maintainer_ rejected your work and close the PR because it will never be merged (e.g., it's obsolete, it's not a good idea, etc.), go to [Clean up]().
5. If the _maintainer_ asked for adjustments, continue from step A above to make the adjustments.
6. If changes in your PR ever become conflicted with those in master in upstream, complete [Updating your PR with changes from master]() and return here when you are done. Then continue from step 1.


## Clean up

__Assumptions__

* You have a terminal open.
* The terminal is positioned in the root of your local clone.

__Instructions__

1. Checkout the master branch, update master with changes from upstream, and push those changes to your fork. This synchronizes master across your team's repository, your fork, and your clone.
    ```
    git checkout master
    git pull upstream master
    git push origin master
    ```
2. Delete the feature branch from your local repository.
    ```
    git branch -d FEATURE_BRANCH
    ```
    Note: if the last statement complains that the branch has not been merged, you may be trying to delete the wrong branch or the maintainer may have used a "merge" strategy that was not a merge at all. So first, check that you have the correct branch and that your pull-request for that branch has actually been merged. If so, and you are really, really, REALLY sure, then force the delete with a capital "D": `git branch -D FEATURE_BRANCH`.
3. Delete the feature branch from your fork.
    ```
    git push -d origin FEATURE_BRANCH
    ```

## Updating your PR with changes from master

1. Synchronize master
    ```
    git checkout master
    git pull upstream master
    git push origin master
    ```
2. Merge changes from master into your feature branch.
    ```
    git checkout FEATURE_BRANCH
    git merge master
    ```
3. If there were conflicts, follow GitHub's instructions for [Resolving a merge conflict using the command-line](https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/). Be sure to test your changes before committing them. Return here when you are done.
4. If there were no conflicts, just test the merged copy. If there are any problems, continue from [Create and test a small change]().


## Unstage changes

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
