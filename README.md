# Dotfiles Management with Chezmoi

This guide outlines the basic steps to update and sync your dotfiles across your machines using Chezmoi and Git.

## Prerequisites

- Chezmoi installed on your machine(s).
- Git configured with your username and email.
- SSH key set up for GitHub (or Git credentials configured).

## Workflow

### 1. Making Changes to Dotfiles

Whenever you update your dotfiles (e.g., `.bashrc`, `.vimrc`), add these changes to Chezmoi:

```bash
chezmoi add ~/.bashrc
chezmoi add ~/.vimrc
# Add any other changed files similarly
```
### 2. Committing Changes

Navigate to the Chezmoi source directory and commit your changes:

```bash
chezmoi cd
git add .
git commit -m "Describe your changes here"
```

### 3. Pushing Changes to GitHub

Push your changes to GitHub to sync across all machines:

```bash
git push
```
### 4. Applying Changes on Another Machine

On any other machine, pull the latest changes and apply them:

```bash
chezmoi update
```
## Additional Tips

- To review changes before applying them, use `chezmoi diff`.
- If you need to revert to the previous state, you can use `git revert` or `git reset` in the Chezmoi source directory.

# Using My Dotfiles with Chezmoi

If you've stumbled upon my dotfiles and would like to try them out or use them as a starting point for your own setup, here's how you can get started with Chezmoi:

## Prerequisites

Ensure you have Chezmoi installed on your system. If not, 

## Direct Installation Script

Chezmoi provides a script for easy installation. You can run this command in your terminal to download and install the latest version:

```sh
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply koltanl
```
## Initialization

Otherwise, to initialize your setup with my dotfiles, run:

```sh
chezmoi init git@github.com:koltanl/dotFiles.git
```
This command clones my dotfiles repository and sets it up to be managed by Chezmoi on your machine.

## Applying the Dotfiles

After initializing, apply the dotfiles to your system with:

```sh
chezmoi apply
```
This step will configure your system with the settings and preferences defined in my dotfiles.

## Customizing for Your Needs

Feel free to explore the dotfiles and customize them to suit your preferences. Chezmoi makes it easy to manage these customizations and keep them in sync across your devices.
