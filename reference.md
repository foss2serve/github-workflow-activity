# GitHub Workflow Reference


## Prerequisites

- You have a GitHub account and you know your username and password. If you
  don't have one, create one now.
- You have Git 2+ installed and configured.
- You know how to open a terminal and generally work from the command-line.
- You know enough of vi or vim to edit, move around in, save, and quit files.


## Start a new project

When you start a new project, you'll want to create it inside an organization (1-2). This will allow everyone to contribute using the same workflow. It's also a good idea to configure the new project to protect the master branch from accidental deletions and from pushes, and to require that changes to master only be done through reviewed pull-requests (3). Last, you'll need to invite maintainers to be collaborators on the project (4-5). This will allow maintainers to review and merge pull-requests.

_On GitHub_
```
(1) Identify or create an organization to own the new project.
(2) Navigate to the organization and create a new project.
(3) Use the new project's settings to protect the master branch
    from deletion and pushes, require changes to master be
    made through pull-requests, and require each pull-request be
    reviewed by a maintainer.
(4) Invite maintainers to be collaborators on the project.
(5) Each maintainer accepts the invitation through their email
    or on the project's page on GitHub.
```


## Prepare to work on a project

When you first start working on a project, you'll need to fork their project into your personal GitHub account (1-3), clone your fork locally (4-6), and create a remote back to their project in your local repository (7-9). Once you've done this setup for a particular project, you will not need to do it again unless you delete your fork, or your local repository for the project.


_Using GitHub_
```
(1) Navigate to the project you want to contribute to.
(2) Use "Fork" to fork their project into your personal
    GitHub account.
(3) Navigate to your fork of the project.
(4) Use "Clone or download" to reveal your fork's repository URL.
```

_Using the command-line_
```
(5) git clone <FORKS_REPOSITORY_URL> <LOCAL_REPOSITORY_DIRECTORY>
(6) cd <LOCAL_REPOSITORY_DIRECTORY>
```

_Using GitHub_
```
(7) Navigate to the original project's page.
(8) Use "Clone or download" to reveal the project's repository URL.
```

_Using the command-line_
```
(9) git remote add upstream <PROJECT_REPOSITORY_URL>
```


## Prepare to work on an issue

Before you start work, you should claim an unclaimed ticket in the original project's issue tracker representing the bug or feature you are planning to work on. This helps prevent developers from inadvertently working on the same thing at the same time. If you can't find an issue relevant to what you want to work on, you should first create an issue and then claim it. (1-4)

_On GitHub_
```
(1) Navigate to the original project page.
(2) Use "Issues" to find an unclaimed issue to work on.
(3) If necessary, create an issue to work on.
(4) Claim the issue by leaving a comment in the issue stating
    that you are working on it.
```

Once you have claimed an issue, you'll want to create a feature branch to hold your work (___never work on master directly___). But before you do, first make sure your master is up-to-date with the project's repository (5-7). Then create and checkout your feature branch, giving it a meaningful name (8-9).

_On command-line_
```
(5) git checkout master
(6) git pull --ff-only upstream
(7) git push
(8) git branch <FEATURE_BRANCH>
(9) git checkout <FEATURE_BRANCH>
```

You should publish your new branch as soon as possible so others know you are working on it. Git won't let you push a branch that does not have any new commits. So you'll need to commit something to the new branch before you can publish it. Here you'll make an empty commit and then publish the new branch to your fork (10-11).

_On command-line_
```
(10) git commit --allow-empty -m "Start <FEATURE>"
(11) git push -u origin <FEATURE_BRANCH>
```

Now we want to let the project know that we have begun to work on the issue and where they can find your work if they want to watch your progress and provide feedback on your work. Issue a pull-request back to the project (12-13), and then put a reference to the pull-request in the issue you are working on (14-16).

_On GitHub_
```
(12) Navigate to your fork.
(13) Create a pull request from your feature branch
     to the master branch on the project.
(14) Note your pull-request's number.
(15) Navigate to the issue you claimed.
(16) Leave a comment in the issue with the pull-requests number.
     For example, "I'm working on this issue in this
     pull-request #<NUMBER>".
```


## Work

Before you do any work, always make sure you are on the right feature branch for the work that you are doing (1). Then do a little work (2) and commit and publish that work (3-5). The pull-request will be updated automatically.

_Using the command-line_
(1) git checkout <FEATURE_BRANCH>

_Using any development environment_
```
(2) Modify files as needed.
```

_Using the command-line_
```
(3) git add <LIST_OF_MODIFIED_FILES>
(4) git commit -v
(5) git push
```

Tips:
- Keep your commits very small (micro-commits).
- Make sure each change compiles, runs, and passes all tests before you commit.
- Write good commit messages.

## Request feedback

While working on an issue, it is often good to get feedback on your work from the person who reported the issue in the first place (to see if you are meeting their needs) and a maintainer (to see if you are meeting their standards). To do so, mention their names prefixed with an at-sign in a comment on the pull-request and ask them if they take a look at your work and provide some feedback. Make sure they understand that it is a work in progress and you are _not_ ready for the maintainer to merge your pull-request. Getting feedback will reduce the risk of spending a lot of time on something no one wants, and increases the likelihood of making a successful contribution.

## Provide feedback

If you are asked to provide feedback on a pull-request, GitHub lets you view and comment on the changes in a pull-request. You should also download a copy of their feature branch and test it. Probably the easiest way is to clone their fork locally (in a separate location from the clone of your own fork), and checkout the feature branch. Then you can compile, run, test, and further inspect their work, and provide more feedback on the pull-request.

## Respond to feedback

This usually amounts to doing more work: see "Work" above.

## Receive automated feedback

GitHub can provide some automated feedback. If merging your pull-request would result in a lexical conflict, GitHub will indicate that it cannot be merged on the pull-request. In GitHub, a project can also be configured to run automated tests on pull-requests to see if the will pass these tests when merged. This is called continuous integration. If the project has been configured for continuous integration GitHub will display the results of these tests on the pull-request.

## Resolve conflicts using merge

_There are two ways to bring commits from one branch to another: merge and rebase. There is a debate among developers as to which is best. Merge is less likely to cause problems, but may yield a messier history. Rebase may cause problems if you don't know what you are doing, but yields a nicer history. We present merge by default because it is safer, but we also include the commands needed for rebase marked as ALTERNATIVE. Ultimately you will need to use whichever the maintainer prefers. So check the project's contribution guidelines or with one of the project's maintainers._

If GitHub indicates that your pull-request cannot be merged do to conflicts, you will need to update your repositories with the new changes from the project's (1-3), and then merge the new changes in master into your feature branch, resolving any conflicts (4-8), and publish the resolved version to your fork (9).

```
(1) git checkout master
(2) git pull --ff-only master
(3) git push
(4) git checkout <FEATURE_BRANCH>
(5) git merge master                ALTERNATIVE: git rebase master
```

```
(6) Edit each file that has a conflict and resolve them.
    See [1] for more information about resolving conflicts.
    Test that these resolutions actually work.
    Don't continue until they do.
```

```
(7) git add <LIST_OF_FILES_THAT_HAVE_BEEN_RESOLVED>
(8) git merge --continue            ALTERNATIVE: git rebase --continue
```

Repeat (...) until the merge is complete and all conflicts have been resolved and the system works.

```
(9) git push                        ALTERNATIVE: git push -f origin master
```


## Request a review

When you believe your pull-request is ready to be merged into the project's repository, request a maintainer to review your pull-request by mentioning their username prefixed with an at-sign in a comment on the pull-request and indicate that your pull-request is ready for review and merge.


## Review a pull-request

A maintainer reviews the pull-request as they did in "Provide feedback". If they think the pull-request is not ready for merging, they should leave feedback on the issue explaining what needs to be done. If they think that the pull-request is not appropriate or is invalid, they may say so and close the pull-request. If they agree that the pull-request is ready, they can either merge the pull-request or squash-and-merge the pull-request. Merging the pull-request will merge all the commits as is into the project's repository. Squash-and-merge will first squash all the commits into one commit and then merge that commit into the project's repository.


## Cleanup your repositories after pull-request was accepted

After a maintainer accepts and merges your pull-request, you need to pull then new commits in the project's repository into yours (1-2), and delete the unneeded feature branch.

_On the command-line_
```
(1) git checkout master
(2) git pull --ff-only master
(3) git branch -d <FEATURE_BRANCH>
(4) git push --delete <FEATURE_BRANCH>
```

## Abandon a pull-request

For whatever reason, you may want to give up and abandon your pull-request. When this happens, you need to close your pull-request (1-2) and delete your feature branch (3-5).

_On GitHub_
```
(1) Comment on the pull-request indicating why you are
    abandoning the pull-request.
(2) Close the pull-request.
```

_On the command-line_
```
(3) git checkout master
(4) git branch -D <FEATURE_BRANCH>
(5) git push --delete <FEATURE_BRANCH>
```


## References

[1] GitHub. _Resolving a Merge Conflict from the Command Line_. Accessed April
2016.
<https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/>.

[2] GitHub. _About Git Rebase_. Accessed April 2016. <https://help.github.com/articles/about-git-rebase/>.


## Copyright and Licensing

Copyright 2016 Darci Burdge and Stoney Jackson SOME RIGHTS RESERVED

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-sa/4.0/ .
