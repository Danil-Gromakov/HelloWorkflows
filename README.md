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