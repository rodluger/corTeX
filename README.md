<h1 align="center">
  cortex
</h1>
<p align="center">
  Continuously-integrated Open-source Reproducible TeX
</p>
<p align="center">
  <a href="https://travis-ci.org/rodluger/corTeX/">
    <img src="https://img.shields.io/travis/rodluger/corTeX/master.svg"/>
  </a>
  <a href="https://github.com/rodluger/corTeX/raw/master-pdf/ms.pdf">
    <img src="https://img.shields.io/badge/read-the_paper-blue.svg?style=flat"/>
  </a>
</p>


## Quick start

1. [Fork](https://github.com/rodluger/corTeX/fork) this repository and [rename it](https://help.github.com/en/articles/renaming-a-repository) to your desired project's name
2. Create a [Travis-CI account](https://travis-ci.org/) account and sync it to your GitHub if you don't have one already; it may take a few minutes for Travis-CI to discover your new repo
3. Under the settings page for your repo (``https://travis-ci.org/<user>/<repo>/settings``), create two environment variables: ``GITHUB_USER`` and ``GITHUB_API_KEY``. The former is just your GitHub username, while the latter is your [secret GitHub API token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line). This allows Travis-CI to commit and push changes to your repository on your behalf. Treat this token as you would treat a password, and never store it anywhere on your repo! Make sure to disable **Display value in build log** so it doesn't get leaked to the world. Note that you only need to give Travis **repo** permissions
4. Hack away! Read the brief [paper](https://github.com/rodluger/paparazzi/raw/master-pdf/ms.pdf) explaining more details about how to use **corTeX**
