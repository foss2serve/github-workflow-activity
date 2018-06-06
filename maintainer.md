# Maintainers' Guide

## Create an Organization

On GitHub

1. Click the plus in the upper right corner and select __New organization__.
2. Name it what you like.
3. Select a free plan.
4. Invite each of your team members to be an organization member.
5. Configure member privileges so that organization members can write to repositories. See __Settings__ >> __Member privileges__ >> __Repository permissions__ .
    - You are doing this so everyone in your team can play the role of maintainer.


## Create a repository in your organization

Follow GitHub's directions for [Creating a new repository](https://help.github.com/articles/creating-a-new-repository/)


## Review a pull-request

1. Navigate to the pull-request that needs a review.
    - If you've been requested to review a pull-request, you should have a notification on GitHub (see the bell in the upper right corner).  Find the notice and click through to the pull-request.
    - Otherwise, navigate to the repository in the organization and find the pull-request under the __Pull-requests__ tab.
2. Inspect the changes and make sure the following are true.
    - [ ] The pull-request links to the issue(s) that this pull-request addresses.
    - [ ] The changes are alignment with the goals, mission, and priorities of the project.
    - [ ] The changes address only the issue they link to.
    - [ ] The changes are reasonable and meet the projects style conventions.
    - [ ] The changes do not textually conflict with changes in master. (GitHub will tell you if they do)
    - [ ] The changes pass all the automated tests (N/A for this exercise)
    - [ ] The changes when merged into master run properly on your machine. (N/A for this exercise)
3. If any of the above are not true, state the problem and what needs to be done before the pull-request can be merged.
4. Or, if the PR will never be merged (e.g., the changes are not in alignment with the goals, mission, and priorities of the project), state the issue and close the PR.
5. If the entire checklist is true then merge the pull-request. For details on the different ways you can merge a pull-request, see GitHub's instructions on [Merging a pull request](https://help.github.com/articles/merging-a-pull-request/).

## Copyright and Licensing

Copyright 2018 Darci Burdge and Stoney Jackson SOME RIGHTS RESERVED

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/ .
