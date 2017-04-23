# GitHub Workflow Reference


## Prerequisites

- You have a GitHub account and you know your username and password. If you
  don't have one, create one now.
- You have Git 2+ installed and configured.
- You know how to open a terminal and generally work from the command-line.
- You know enough of vi or vim to edit, move around in, save, and quit files.


## Workflow Overview

The workflow description below covers the typical operations in the order
they are often performed to develop and contribute work to another project.
Most of the operations are issued from the command-line. These lines start with`$`.
Do not type `$`. This is the prompt that the command-line displays to you to
indicate that it is ready for you to type a command. Lines that start with `###`
are performed using GitHub through a browser. The numbers at the end of each
line are for quick reference and should not be typed either. When you see a term in all capital letters surrounded by angle
brackets, e.g., `<MY_URL>`, replace it with a value appropriate to the project
you are working on. A list of these placeholders and their meaning is below:

- `<MY_URL>` - The URL to your GitHub hosted repository. To find it, navigate to
  your repository on GitHub. Click on the green "New Pull Request"
  button. You get a pop-up that contains a URL in a text-box. Unless you have configured your GitHub account to authenticate with SSH, you'll want a URL that starts with https://. If the URL starts with git@github... click `Use HTTPS`.
- `<THEIR_URL>` - The URL for the project's repository that you would like to
  contribute to. Find it by navigating to their repository on GitHub and copy
  the URL in the box right of the `SSH` or `HTTPS` button. Use `HTTPS` since
  this is not your repository.
- `<DIR>` - This is any directory name you like. But use the same directory for
  each occurrence of `<DIR>`.
- `<BRANCH_NAME>` - This is a branch name of your choosing. Choose one that is
  related to the bug your are fixing or the feature you are implementing.
  Whatever you choose, use the same branch name throughout the example.


## Setup: (1-4)

When you first start working on a project, you'll need to fork their project
(1), clone your fork locally (2-3), and create a remote back to their project in
your local repository (4). Once you've done this setup for a project, you will
not need to do it again unless you delete the fork, your local clone, or the
remote.


_Using GitHub_
```
(1) Fork upstream repository into your personal GitHub account.
```

_Using the command-line_
```
(2) $ git clone <MY_URL> <DIR>
(3) $ cd <DIR>
(4) $ git remote add upstream <THEIR_URL>
```


## Starting your contribution: (5-13)

When you start working on a contribution, you need to create a branch to hold
your work (5), do a little work and commit it (6-8), push your new branch to
your repository on GitHub (11), and create a pull-request from your new branch
to master in the project's repository on GitHub (12-13).

The purpose of the pull-request isn't to get the maintainer to accept your work
(yet). It starts a conversation with the maintainer. They can review what you
are trying to do and give you feedback early. That way, if you are on the wrong
track or the maintainer is not interested in your idea, you can find out before
you waste too much time implementing your idea.

_Using the command-line_
```
(5) $ git checkout -b <BRANCH_NAME>
```

_Using favorite tools_
```
(6-8) Modifying your project files as needed.
```

_Using the command-line_
```
(9) $ git add .
(10) $ git commit -v
(11) $ git push -u origin <BRANCH_NAME>
```

_Using GitHub_
```
(12) Create a pull-request from <BRANCH_NAME> in yours
     to master in theirs.
```

## Work (14-17)

Keep working on your idea, committing and publishing your work as you go
(14-17). The pull-request will automatically be updated with the new commits you
push to your repository on GitHub, allowing the maintainer to follow your
progress as you go.

_Using favorite tools_
```
(14) Modify files as needed.
```

_Using the command-line_
```
(15) $ git add .
(16) $ git commit -v
(17) $ git push origin <BRANCH_NAME>
```


## Keep your repositories up-to-date (18-23)

While you are working on your idea, the maintainer may have accepted work from
other contributors. As that happens, the project's master branch will contain
commits that yours do not. You'll need to fetch these commits into your local
master (18), rebase your work on top of those commits (19), and push your
branches to your repository on GitHub (23). When you rebase your work (19) you
might find that your changes are incompatible with those you fetched from
upstream. You will need to resolve any conflicts that git identifies (20-22).
GitHub has a lovely tutorial on resolving conflicts [1].

It's a good idea to update your repositories regularly so that your work does
not become too stale.

Again, as you push your work to your repository on GitHub, the pull-request
is updated automatically.

_Using the command-line_
```
(18) $ git fetch upstream master:master
(19) $ git rebase master
```

_Using favorite editor_
```
(20) Modify file with conflict to resolve conflict.
```

_Using the command-line_
```
(21) $ git add .
(22) $ git rebase --continue
(23) $ git push -f origin master <BRANCH_NAME>
```


**If you are on master, (18) will fail. Now what?**

If you are on master branch, (18) will fail. Instead replace that line with `git pull upstream master`. This will fetch and merge the changes from upstream's master branch into your current local branch (master in this case). After that, (19-22) are unnecessary. However, don't forget to update master in your origin repository but running (23).


**Updating other branches**

After you have updated your master branch (18), if you have other branches, you may need to update them as well. To do that, checkout each branch one at a time (e.g., `git checkout <OTHER_BRANCH_NAME>`) and perform (19-22) for each.


## Squash your commits (24-25)

If you are following best practices, you will make many small commits as you
develop your idea. Sometimes earlier commits are invalidated/corrected by later
commits as you refine your solution. Your commit log becomes a diary of how you
developed your solution. This log is sometimes useful to you as you develop your
idea, but usually maintainers will ask you to squash your commits (24) into just
a few (often one) logical commit that implements your feature, or fixes the bug.
That helps keep the log of the main project cleaner, and more clearly identifies
which commits are responsible for implementing which features or fixing which
bugs. Usually you squash when you near completion of your implementation, but a
maintainer may ask you to squash periodically as you go because it may make it
easier for them to review your changes.

In any case, you will periodically squash your commits (24) and push the
squashed version to your repository on GitHub (25). Again, the pull-request will
be updated automatically.

To squash commits, we perform an interactive rebase (24). This will put us into
and editor (vim most likely) with a list of the commits that we are rebasing at
the top. To squash them into one commit, change the first word in every line
after the first from `pick` to `squash`. Save and quit. Git will combine all the
commits into the first and will again put you into an editor to create the final
commit message for the newly squashed commit. If you have been providing good
commit messages as you go along, writing a good final commit message should be
relatively easy.

GitHub has a nice article on interactive rebases [2].

_Using the command-line_
```
(24) $ git rebase -i master
(25) $ git push -f origin <BRANCH_NAME>
```


## Maintainer accepts your pull-request (26)

After all your hard work, hopefully the maintainer will eventually accept your
pull-request, which will merge your changes into their master branch.

_Using GitHub_
```
(26) Maintainer accepts your pull-request.
```


## Update your master (27-28)

After the maintainer has accepted your pull-request, your need to update your
master with the new changes in upstream, which are yours (27-28)! You follow the
same procedure as in "Keeping your repositories up-to-date", except that you
don't  need to rebase. That's because your work is already included in master.

_Using the command-line_
```
(27) $ git fetch upstream master:master
(28) $ git push origin master
```


## Delete unneeded branches (29-31)

Now that your work has been accepted in upstream, you can safely delete the
branches you were working on both in your local and remote repositories (29-31). If you ever abandon your effort before
a pull-request is accepted, you can also delete your branch; but you'll need
to use -D (capital D) in (30).

_Using the command-line_
```
(29) $ git checkout master
(30) $ git branch -d <BRANCH_NAME>
(31) $ git push origin :<BRANCH_NAME>
```


## Update your repositories before starting the next fix/feature (32-33)

OK, it's been a month since you worked on the project. Now you're back from the Bahamas and are ready to start working again. However, while you were sunning yourself, others have been hard at work contributing changes to upstream. So before you start working again, you need to update your repositories with changes from upstream. Follow steps in section _Keep your repositories up-to-date (18-23)_ to get this done.

Nice tan. Now get back to work!


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
