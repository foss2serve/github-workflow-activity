# GitHub Workflow Activity

## Form teams

Form a 2-3 person team. We suggest you work with someone who is uses the same operating system as you.

There are two roles: __maintainer__ and __contributor__. Each team member will adopt each role at different times while playing out different scenarios. Rotate roles before each scenario, and consider replaying a scenario with team members taking on different roles.

Create and share with your team a shared editor (e.g., Google docs, https://pad.riseup.net/, etc.) for notes and answering questions.

## Overview

Your team will play out several scenarios.

- Complete each scenario in order.
- Complete each step in each scenario in order.
- There are two guides, one for each role. Use them to help you along the way.
  - [__Contributors' Guide__](contributor.md)
  - [__Maintainers' Guide__](maintainer.md)


## Organization and Project Setup

1. Before continuing, make sure all of the following are true.

    - [ ] Everyone in your team has a GitHub account.
    - [ ] Everyone in your team is logged into their GitHub account.
    - [ ] Everyone in your team has git installed on their laptop.

  If any of the above are not true, help your team members to make them true.

2. Assign the role of _maintainer_ to one of your team members.

3. Help the _maintainer_ create an organization on GitHub by following the steps to [Create an Organization](maintainer.md#create-an-organization) in the maintainers' guide.

    - What is the URL to the new organization?

        ```

        ```

4. Have each team member accept the invitation. There are two ways to do this.

    - Have the team member navigate to the organization on GitHub and accept the invitation.
    - Have the team member check for an invitation in their email associated with their GitHub account.

5. Help the _maintainer_ create an official upstream repository in the organization as specified below by following GitHub's directions for [Creating a new repository](https://help.github.com/articles/creating-a-new-repository/)

    - Name it `ourfavorites`
    - Optionally add a description
    - Make it public
    - Initialize it with a README
    - Optionally add a .gitignore (not necessary for this activity)
    - Add an open source license
    - What is the URL to your official upstream repository?
        ```

        ```

Congratulations, you have an organization with organization members, and an initial project! :clap:

### Reflect

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

## Contributor Setup

1. Assign the role of _contributor_ to a team member.
2. Help the _contributor_ to complete the steps to [Prepare to work on a project](contributor.md#prepare-to-work-on-a-project) to prepare to work on `ourfavorites`
3. Repeat this section for each team member, ___one at a time___, including the team member who was initially assigned the role of maintainer.

Congratulations, everyone on your team is ready to contribute to the project and can play the role of maintainer as needed! :clap:


### Reflect

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


## Scenario 1: First contribution

1. Assign the role of _maintainer_ to one team member
2. Assign the role of _contributor_ to another team member.
3. Help the _contributor_ to follow the steps to [Prepare to work on an issue](contributor.md#prepare-to-work-on-an-issue) and [Work on an issue](contributor.md#work-on-an-issue) to accomplish the following:
    - Create a new file `favorite-foods.txt` in the root of the project that contains a couple of your favorite foods.
4. Help the _maintainer_ to accept _contributor's_ pull-request on GitHub by following the instructions to [Review a pull-request](maitainer.md#review-a-pull-request).
5. Help the _contributor_ to [Clean up](contributor.md#clean-up).

Congratulations, your team has made its first contribution! Celebrate. :clap: :clap:


### Reflect

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


## Scenario 2: Second Contribution

1. Assign _contributor_ to a team member who wasn't contributor in the previous scenario.
2. Assign _maintainer_ to a team member who wasn't maintainer in the previous scenario.
3. Help the _contributor_ to follow the steps to [Prepare to work on an issue](contributor.md#prepare-to-work-on-an-issue) and [Work on an issue](contributor.md#work-on-an-issue) to accomplish the following:
    - Add a couple of your favorite foods to `favorite-foods.txt`.
4. Help the _maintainer_ to accept _contributor's_ pull-request on GitHub by following the instructions to [Review a pull-request](maitainer.md#review-a-pull-request).
5. Help the _contributor_ to [Clean up](contributor.md#clean-up).

Celebrate again. :clap: :clap:

If you have 3 team members, repeat this scenario again so that each team member will have experienced each role.


### Reflect

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

## Scenario 3: Multi-round contribution

1. Assign _contributor-1_ to one team member
2. Assign _contributor-2_ to another team member
3. Assign _maintainer_ to one team member (the maintainer may also be a contributor)
    - In a two-person team, each contributor plays maintainer for the other contributor.
4. At the same time
    - Have _contributor-1_ follow the steps to [Prepare to work on an issue](contributor.md#prepare-to-work-on-an-issue) and [Work on an issue](contributor.md#work-on-an-issue) to accomplish the following:
        - Add another food to `favorite-foods.md`
    - Have _contributor-2_ follow the steps to [Prepare to work on an issue](contributor.md#prepare-to-work-on-an-issue) and [Work on an issue](contributor.md#work-on-an-issue) to accomplish the following:
        - Add a new file `favorite-movies.md` with a couple of movies in it.
5. Have the _maintainer_ use the pull-request to request a change (e.g., "Please pick another food. I don't like chocolate."). Do this for each pull-request.
6. Have _contributors_ follow steps to [Work on an issue](contributor.md#work-on-an-issue) to make the requested changes.
7. Have the _maintainer_ accept the updated pull-requests.
8. Have the _contributors_ [Clean up](contributor.md@clean-up).

Notice how pull-requests provide a way for a contributor and a maintainer to communicate about a proposed change. Also notice how the pull-request updates automatically as new changes are pushed to the same branch.

### Reflect

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


## Scenario 4: Contribute conflicting changes

1. Assign _contributor-1_ to one team member.
2. Assign _contributor-2_ to another team member.
3. Assign _maintainer_ to one team member (the maintainer may also be a contributor).
4. At the same time
    - Have _contributor-1_ follow the steps to [Prepare to work on an issue](contributor.md#prepare-to-work-on-an-issue) and [Work on an issue](contributor.md#work-on-an-issue) to accomplish the following:
        - Sort the foods in `favorite-foods.md` in descending order (e.g., z-a).
    - Have _contributor-2_ follow the steps to [Prepare to work on an issue](contributor.md#prepare-to-work-on-an-issue) and [Work on an issue](contributor.md#work-on-an-issue) to accomplish the following:
        - Capitalize the first letter of each food in `favorite-foods.md`. (If they are already capitalized, then lower-case them.)
5. Have the _maintainer_ accept one of the pull-requests.
6. Have the _maintainer_ try to accept the other pull-request. (You
  shouldn't be able to because changes in the pull-request conflict with the other that you already accepted.)
7. Help the _contributor_ who's pull-request was not accepted follow
steps to [Update and resolve conflicts on a pull-request](contributor.md#update-and-resolve-conflicts-on-a-pull-request).
8. Help the _maintainer_ accept the pull-request.
9. Have _contributors_ [Clean up](contributor.md@clean-up).

Celebrate enthusiastically. :clap: :clap: :clap: That was challenging.

If time allows repeat this scenario, with a different team member playing the role of the contributor that must update and resolve conflicts on their pull-request.

### Reflect

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



## Copyright and Licensing

Copyright 2018 Darci Burdge and Stoney Jackson SOME RIGHTS RESERVED

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/ .
