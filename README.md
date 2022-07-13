# HelloWorkflows

- [About workflows](https://docs.github.com/en/actions/using-workflows/about-workflows)

Workflows are defined in the .github/workflows directory in a repository

**An event** is a specific activity in a repository that triggers a workflow run. For example, activity can originate from GitHub when someone creates a pull request, 

**A job** is a set of steps in a workflow that execute on the same runner. Each step is either a shell script that will be executed, or an action that will be run.

**An action** is a custom application for the GitHub Actions platform that performs a complex but frequently repeated task.

**A runner** is a server that runs your workflows when they're triggered. Each runner can run a single job at a time. 


Tool for testing
```bash
sudo apt install bats
```

- [Triggering a workflow](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow)
- [Events that trigger workflows](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows)
- [Workflow syntax for GitHub Actions](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)

Use **concurrency** to ensure that only a single job or workflow using the same concurrency group will run at a time. A concurrency group can be any string or expression.

A workflow run is made up of one or more **jobs, which run in parallel by default.** To run jobs sequentially, you can define dependencies on other jobs using the jobs.<job_id>.needs keyword

- [Choosing GitHub-hosted runners](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#choosing-github-hosted-runners)
- [Example: Using secrets](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#example-using-secrets)
- [Example: Using an action inside a different private repository than the workflow](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#example-using-an-action-inside-a-different-private-repository-than-the-workflow)
- [Example: Running a job within a container](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#example-running-a-job-within-a-container)

- [on.schedule](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#onschedule)


Note: If your workflows use Docker container actions, job containers, or service containers, then you must use a Linux runner:

    If you are using GitHub-hosted runners, you must use an Ubuntu runner.
    If you are using self-hosted runners, you must use a Linux machine as your runner and Docker must be installed.

- [Workflow commands for GitHub Actions](https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions)

- [Using workflow commands to access toolkit functions](https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#using-workflow-commands-to-access-toolkit-functions)
- [Example: Setting a warning message](https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#example-setting-a-warning-message)
- [Adding a job summary](https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#adding-a-job-summary)