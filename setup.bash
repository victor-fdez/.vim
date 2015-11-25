#!/bin/bash -
#===============================================================================
#
#          FILE: setup.bash
#
#         USAGE: ./setup.bash
#
#   DESCRIPTION: Sets up the vim plugins in your system using pathogen and the
#                following plugins:
#                    Nerdtree - for filesystem editing, viewing, creating...
#                    vim-support - plugins to add comments, and create files
#                                  quicker
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Victor J. Fernandez
#  ORGANIZATION:
#       CREATED: 11/20/2015 11:39
#      REVISION: 1.0
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e
#-------------------------------------------------------------------------------
# CHECK THE ENVIRONMENT VARIABLE 'HOME' IS SET
#-------------------------------------------------------------------------------
if [ -z "$HOME" ]; then
        echo "ERROR: $HOME env variable was not defined"
        exit 1;
fi

if [ -f "$HOME/.vimrc" ] ; then
        echo "NOTICE: your $HOME dir already as a .vimrc"
        echo "        would you like to continue? (Y|N)"
        read decision
        if [ $decision == "N" ] ; then
                exit 1
        fi
        echo "NOTICE: making a copy to $HOME/.vimrc.bk"
        cp -f "$HOME/.vimrc" "$HOME/.vimrc.bk"
fi
#-------------------------------------------------------------------------------
# CREATE SYMBOLIC LINK TO vimrc FILE IN .vim FOLDER
#-------------------------------------------------------------------------------
ln -sf "$HOME/.vim/vimrc" "$HOME/.vimrc"
#-------------------------------------------------------------------------------
# THAT IT
#-------------------------------------------------------------------------------
echo "SUCCESS: Everything was installed correctly!"

