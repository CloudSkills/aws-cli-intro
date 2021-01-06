

# Intro to AWS Command Line Interface (AWS CLI)

## David Cobb

- (Azure) cloud consultant, instructor, learner
- Recent focus on Azure but supporting AWS as well

___


## Why Command Line?
> A GUI makes simple things easy and difficult things impossible.

> The command like makes simple things difficult and difficult things **_possible_**.


#### AWS CLI, and shell in general, is a big learning curve.

#### Investing effort and focus will pay off your entire cloud career.

### My goal today is to get you interested and equipped to get started.

___

## Where to Begin?

### 1. [Get a AWS Free Tier Account](https://aws.amazon.com/free/)

### 2. Bookmark the docs for the _latest V2 version_ (you'll live in the docs)

##### [AWS CLI Command Reference](https://awscli.amazonaws.com/v2/documentation/api/latest/index.html)


> Beware [version 1 documentation](https://docs.aws.amazon.com/cli/latest/index.html) and blog posts!

### 3. Run the AWS Cloud Shell
___

## What Shell?

  * Bash, zsh, *sh (Linux and WSL only)
  * **PowerShell** (Windows and Linux, cross-platform)
  * Each has idiosyncracies, with special scripting & syntax rules
    * Example, line continuation character is \ for bash ` (backtick) for powershell
    * [Quotes with Strings](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html)

> Much of the frustrating part of learning AWS CLI comes from the challenge of learning the shell and working with the differences between them.
___

## How do I get started with AWS CLI?

### [Install it](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html), or...

### Run from AWS Cloud Shell

___

## AWS Cloud Shell

### Shell choices of **bash**, **powershell** or **zsh**

### Actions
  * fonts
  * tabs, rows, columns

### [Pre-installed software](https://docs.aws.amazon.com/cloudshell/latest/userguide/vm-specs.html#pre-installed-software)
* Editor
  * vim ( :( )
  * sudo yum install nano ( :) )

___

### Let's have a look around

### `aws help`
___

### The Basics

  * Syntax
  * Auto prompt (tab completion)
    * --cli-auto-prompt
  * [Output](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-output.html)
  * Parameters
    * [Types](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html) 
    * [Shorthand Syntax](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-shorthand.html)
  * **JSON**
  > Wrangling JSON is a major element of working in AWS CLI
  * [AWSCLI skeleton](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html)

___

### DEALING WITH JSON

### In Bash / zsh

* jq

### In PowerShell / pwsh

* ConvertFrom-JSON

___ 

### DEALING WITH OVERWHELM

#### Commands to start

  * aws configure
  * aws iam
  * aws s3
  * aws ec2

___

### HOMEWORK

* Get hands-on or forget everything!

* Find interesting commands

* Make a learning project

* Ask for help on CloudSkills #aws slack channel

___

## Q & A

___

### References
* [AWS CLI Command Reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/index.html) 
* [AWS Command Line Interface and aws-shell Sample for AWS Cloud9](https://docs.aws.amazon.com/cloud9/latest/user-guide/sample-aws-cli.html)
* [AWS CloudShell Reference](https://docs.aws.amazon.com/cloudshell/latest/userguide/welcome.html)
* [Security for AWS CloudShell](https://docs.aws.amazon.com/cloudshell/latest/userguide/security.html)
* [Awesome JQ](https://github.com/fiatjaf/awesome-jq)

### Resources
* [AWS CLI Cheat Sheet](https://riptutorial.com/aws-cli/example/22749/aws-cli-cheat-sheet---list-of-all-cli-commands)
* [aws-shell](https://github.com/awslabs/aws-shell)

