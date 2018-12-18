# Introduction

* Note: work with cleo <== cleo-0.6.1

[![GitHub issues](https://img.shields.io/github/issues/webdevops/Dockerfile.svg)](https://github.com/webdevops/Dockerfile/issues)[![GitHub forks](https://img.shields.io/github/forks/webdevops/Dockerfile.svg)](https://github.com/webdevops/Dockerfile/network)[![GitHub stars](https://img.shields.io/github/stars/webdevops/Dockerfile.svg)](https://github.com/webdevops/Dockerfile/stargazers)[![GitHub license](https://img.shields.io/github/license/webdevops/Dockerfile.svg)](https://github.com/webdevops/Dockerfile/blob/master/LICENSE)
[![pipeline status](https://gitlab.com/webdevops/autobuild/badges/master/pipeline.svg)](https://gitlab.com/webdevops/autobuild/commits/master)

![Dockerfile](https://static.webdevops.io/dockerfile.svg)

Automated build and test running on [WebDevOps CI](https://gitlab.com/webdevops/autobuild/) \(GitLab.com CI custom AWS runner\) sponsored by [Onedrop GmbH & Co. KG](https://1drop.de).

[![Docker layout](documentation/gitbook/.gitbook/assets/docker-image-layout.gv.png)](https://github.com/webdevops/Dockerfile/tree/511a870fa90fe53da5c63a95b4254f6980e6d3d2/documentation/docs/resources/images/docker-image-layout.gv.png)

## Communication and support

Join us on [Slack](https://webdevops.io/slack/)

Or write an issue in our [GitHub repository](https://github.com/webdevops/Dockerfile/issues).

## Documentation

* [Old version of the documentation is available on readthedocs](https://dockerfile.readthedocs.io/)
* [New version is currently being written on gitbook](https://webdevops.gitbook.io/dockerfile)


## What we're trying to accomplish here..

* who is DevOps ? What kind of activities he or she is performing ? Answering this question is necessary precondition to get into workflow implementation details.

##Typical sysadmin activities##: logging onto remote servers, managing files and directories, editing configurations, restarting services, watching logs and so on.

##Software development activities##: all DevOps work somehow connected to writing various scripts on different languages and formats: Bash, Python, Go, Ansible, Salt, Puppet, JSON, YAML, etc. Those all are stored in projects in DVCS systems like git or Mercurial.

##Management activities## - because DevOps work is more about managing your organisation via code - it usually requires developing documentation on current processes, documenting improvements, architectures and new procedures.

Trends:
sysadmins are moving from managing individual servers to managing configurations

