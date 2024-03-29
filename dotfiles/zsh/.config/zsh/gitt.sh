#!/bin/bash
source "$ZPUBLICDOTDIR/git"
bold=$(tput bold)
normal=$(tput sgr0)
if [ "$1" == "diff" ]; then
   GIT_EXTERNAL_DIFF=difft git diff
elif [ "$1" == "top" ]; then
   gitui
elif [ "$1" == "discover" ]; then
   echo -e "\n************************"
   echo "** Decouverte du repo **"
   echo "************************"
   echo -e "\n- Les contributeurs -"
   echo -e "---------------------\n"
   git repo-top10
   echo -e "\n- Les branches et les tags -"
   echo -e "----------------------------\n"
   git repo-branches-and-tags --max-count=15
   echo -e "\n- Analyse quantitative du code-"
   echo -e "-------------------------------\n"
   tokei
   echo -e "\n- Les modifications récentes -"
   echo -e "------------------------------\n"
   git repo-yesterday-commit
elif [ "$1" == "daily" ]; then
   echo -e "\n***********"
   echo "** Daily **"
   echo -e "***********\n"
   git repo-yesterday
   git repo-yesterday-commit
elif [ "$1" == "weekly" ]; then
   echo -e "\n*******************************"
   echo "** Cette semaine sur le repo **"
   echo -e "*******************************\n"
   git repo-this-week
elif [ "$1" == "br" ]; then
   _gcb
elif [ "$1" == "delete" ]; then
   _gdb
elif [ "$1" == "pr" ]; then
   _ggpr
elif [ "$1" == "tags" ]; then
   _gt
elif [ "$1" == "remotes" ]; then
   _gt
elif [ "$1" == "stash" ]; then
   _gs
elif [ "$1" == "github" ]; then
   # https://github.com/dlvhdr/gh-dash
   gh dash
else
   echo -e "\n-------------------------------"
   echo "- ${bold}gitt : commandes git custo.${normal} -"
   echo -e "-------------------------------\n"
   echo " * ${bold}br${normal} : selectionner une branche avec fzf"
   echo " * ${bold}diff${normal} : afficher le git diff avec Difftastic"
   echo " * ${bold}daily${normal} : des informations pour le daily"
   echo " * ${bold}delete${normal} : selectionner une branche à supprimer (force) avec fzf"
   echo " * ${bold}discover${normal} : découvrir le repo git"
   echo " * ${bold}github${normal} : des informations sur son activité Github global"
   echo " * ${bold}pr${normal} : passer sur la branche d'une PR Github avec fzf"
   echo " * ${bold}remotes${normal} : afficher les remotes avec fzf"
   echo " * ${bold}stash${normal} : afficher les patchs de stash avec fzf"
   echo " * ${bold}tags${normal} : afficher les tags avec fzf"
   echo " * ${bold}top${normal} : explorer le repo avec gitui"
   echo " * ${bold}weekly${normal} : des informations sur les commits de la semaine"
   echo " "
fi
