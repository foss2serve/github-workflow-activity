# Contributor - Prepare to work on an issue

## A. Claim an issue

__Assumptions__

* You are signed into GitHub.

__Instructions__

1. Navigate to your team's repository on GitHub (_not_ your fork).
2. Click the __Issues__ tab.
3. Search to see if there is an existing issue for what you want to do.
4. If no reasonable issue exists for what you want to do, create one.
5. If someone is assigned to the ticket or has claimed it by leaving a comment that they are working on it, move on, or maybe leave a comment asking about the progress and express interest in working on the issue.
6. If no-one is working on the issue assign yourself to the ticket (or leave a comment that you are working on it).
7. Help your recorder note the issue number of the issue you will be working on.

Congratulations, you now have a claimed issue for the work you plan to do.

Issues provide a way for developers to collaborate. They are used for many purposes including proposing and discuss ideas; prioritizing, sizing, and valuing requests; clarify requirements; verify bugs; and generally to coordinate development efforts. When looking for something to work on, use the issue tracker to find issues that the community (and the maintainers in particular) are interested in. Otherwise you may be working on something that will never be accepted.


## B. Prepare to work on the issue

__Assumptions__

* You have claimed an issue for the work you plan to do.
* You have a terminal open.
* The terminal is positioned in the root of your local clone of the repository.
* You are signed into GitHub.

__Instructions__

1. You are going to create a new branch to hold your work. New branches should always be branched from master. So first ensure that the master branch is checked out.
    ```
    git checkout master
    ```
2. Also you should make sure that you start your branch based on the most recent copy of master. So pull changes from upstream (your team's repository on GitHub). In this activity, there shouldn't be any new changes in upstream, but this is a good habit to get into. So let's practice.
    ```
    git pull upstream master
    ```
2. Create the feature branch for the issue. Name it something short but meaningful and relevant to the issue. Replace BRANCH_NAME in the command below with your chosen name.
    ```
    git branch BRANCH_NAME
    ```
3. Checkout the branch you just created. Checking out a branch makes it the active branch so that any new commits you make will be added to this branch.
    ```
    git checkout BRANCH_NAME
    ```
4. Create an empty commit so that you can immediately issue a pull-request in the steps below. (Alternatively you could make a small change, stage it, and commit it. For now, just create an empty commit.)
    ```
    git commit --allow-empty -m "Start BRANCH_NAME"
    ```
5. Push your new branch containing the empty commit to your fork. Recall that your clone has a remote named `origin` that points to your fork. At the same time, use `-u` to tell git to track this remote branch with the local branch with the same name. Basically you are telling git that the new remote and local branches mean the same thing. You only use `-u` when you first create and push a branch.
    ```
    git push -u origin BRANCH_NAME
    ```
6. On GitHub, navigate to your fork.
7. Open a pull-request (__PR__) by clicking __New pull-request__.
8. Make sure that
    * The base repository is set to your team's repository under the organization
    * The base branch is set to master
    * The compare repository is set to your fork of the team's repository
    * The compare branch is set to your feature branch (e.g., BRANCH_NAME)
9. Click the __Create pull request__ button.
10. Briefly describe what you plan to do, and mention the issue that this PR is addressing. Mention the issue by putting its issue number in the body using this format: `#i` where `i` is the issue number. When GitHub sees this, it cross-references the issue and the PR allowing folks to easily to get from one to the other.
11. Click __Create pull request__.

Congratulations! You have opened a PR for the issue you are going to work on. While issues are generally for clarifying requirements, a PR is generally where developers discuss design and implementation of solutions to issues.
