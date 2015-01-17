## About

This directory houses copies of the configuration files and templates for my
personal setup.  That includes all of my dotfiles and my folder of vim plugins.

## Getting Started on a New System or Server

To efficiently mirror the setup in this folder on particular systems and
servers, I use symlinks.

For example, I have my system's `.vim/` directory reference the `my.vim/`
folder in this repo.  That way, when I add plugins on one machine, commit, and
git pull on another machine, all of the plugins will automatically be synced
and updated.

To set this up (taking the `.vim/` example), I run 

    cd 
    ln -s /path/to/gitrepo/my.vim .vim

Done. Know when vim opens and looks for the `.vim/` directory, it will be
redirected to this git repo (saved locally somewhere else on my system).
