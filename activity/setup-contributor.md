# Contributor's Setup

## A. Get organized

1. Assign the _contributor_ role to one of your team members. They will carry out the actions described in this activity on behalf of the team.
2. Assign the _navigator_ role to one of your team members. They will have these instructions open on their computer, keep track of which step the _maintainer_ is on, read each instruction out loud, and help the _maintainer_ to complete the instructions.
3. Assign the _recorder_ role to one of your team members (if you have only two, give this role to the _navigator_). They will have the team's notepad open on their computer, take notes for the team in this pad as needed, help the _maintainer_ to complete the instructions.


## B. Accept the invitation to join the organization

If you played the role of maintainer in the last activity, skip this step.

__Assumptions__

* You are signed into GitHub.

__Instructions__

Either

* Find the invitation in your email, view the invitation, and accept the invitation.

Or

* Navigate to the team's organization, view the invitation, and accept the invitation.


## C. Fork the upstream repository

__Assumptions__

* You are signed into GitHub.
* You are viewing the team's repository within the team's organization on GitHub.

__Instructions__

1. Click __Fork__ in the upper-right corner.
2. If you are a member of one or more organizations, select your personal account to receive the fork.
3. You should be viewing your personal fork of the team's repository on GitHub.

Congratulations, you have forked a personal copy of the team's repository!

## D. Clone your fork

__Assumptions__

* You have git installed and configured on your machine.
* You are viewing your personal fork of the team's repository on GitHub.
* Your team's repository is named ourfavorites.

__Instructions__

1. In the browser, click the green __Clone or Download__ button.
2. If "HTTPS" is not selected, click __Use HTTPS__.
3. Click the clipboard to copy the URL in the box to your clipboard.
4. Open a terminal and change directories to the Desktop.
    - If you are using Windows, right-click on your desktop and select __git-bash__
    - If you are on a Mac or linux, open a terminal and then execute
        ```
        cd ~/Desktop
        ```
5. In the terminal, clone the repository. Do not type PASTE_URL, instead paste the URL that's in your clipboard from step 3.
    ```
    git clone PASTE_URL
    ```
6. Change into the root of your clone.
    ```
    cd ourfavorites
    ```

Congratulations, you have cloned your fork to your local machine!

## E. Add upstream remote

__Assumptions__

* You are viewing your fork of the team's repository on GitHub.
* You have cloned your fork locally.
* You have a terminal opened and positioned in the root of your local clone.

__Instructions__

1. In the browser, navigate to your team's repository by clicking its link under the title of your repository (look for "forked from ...").
2. Click the green __Clone or Download__ button.
3. If "HTTPS" is not selected, click __Use HTTPS__.
4. Click the clipboard to copy the URL in the box to your clipboard.
5. In the terminal add a named URL (called a remote) to your clone that points to the team's repository, which we'll call `upstream`.
    ```
    git remote add upstream PASTE_URL
    ```
6. Run the following and confirm that your local has two remotes (but four lines): origin that points to your fork of the team's repository, and upstream that points to your team's repository.
    ```
    git remote -v
    ```

Congratulations, your local clone now knows where to find the upstream repository (i.e., your team's repository).

## F. Repeat this activity for each other person in your team


## G. Reflect

1. When performing this section, what challenges did you encounter?

    ```

    ```

2. How did you overcome those challenges?

    ```

    ```

3. Is there anything that your team would like clarification about? What questions does your team have about the steps or the concepts in this section?

    ```

    ```

### STOP: Check in with your facilitator
