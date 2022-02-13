# Mes fichiers et répertoires cachés, aka Dotfiles

Ce sont des fichiers ou des dossiers classiquement cachés par le navigateur du fichier. Leur nom est précédé d’un point — d’où leur nom générique de dotfile — et l’utilisateur doit demander explicitement leur affichage. Ils vont le plus souvent être utilisés pour de la configuration du système ou de logiciel. C’est pour cela que beaucoup de personnes, dont moi du coup, portent une attention particulière à la gestion et/ou la centralisation de ces fichiers : cela permet aussi bien le partage de la configuration d’un logiciel particulier que la migration facilitée de son environnement de travail d’un poste à l’autre.

Vous trouverez plus d'explications sur mon post de blog ["Un atelier ouvert et transposable grâce aux dotfiles"](https://alexisjanvier.net/blog/un-atelier-ouvert-et-transposable-grace-aux-dotfiles/)

## Les gestionnaires de dotfiles

Le premier réflexe lorsque l'on veut partager ou sauvegarder ses dotfiles est de créer [une automatisation du processus](https://www.freecodecamp.org/news/build-your-own-dotfiles-manager-from-scratch/). Et bien évidemment, il existe des programmes pour le faire. Il existe par exemple [chezmoi.io](https://www.chezmoi.io/), qui fait beaucoup de chose (gestion de multiples environnements, gestion des secrets ...). Trop peut-être, car sa bonne utilisation requiert un apprentissage non négligeable. Mais il existe aussi en vrac : [yadm](https://yadm.io/), [dotbot](https://github.com/anishathalye/dotbot) ou encore [dot](https://github.com/sds/dot).

> Pour cette ... au moins troisiéme version de mon repo de dotfiles, j'ai opté pour **[stow](https://www.gnu.org/software/stow/)**, une valeur sûre du monde GNU, qui fait une chose (la gestion automatisée de liens symboliques), mais qui le fait bien.

## Organisation du dépôt

On va y trouver bien évidemment des fichiers de configurations, mais aussi des scripts d'installation permettant d'automatiser la mise en place d'un environnement personnalisé sur une nouvelle machine. Il y a donc deux répertoires :

* `dotfiles` : les fichiers de configuration prêts à être mis en place par `stow`,
* `install` : les scripts d'automatisation d'installation et de configuration de mon environnement sur une **machine sous Linux**.

# My Dotfiles

These are files or folders classically hidden by the file browser. Their name is preceded by a dot - hence the generic name dotfile - and the user must explicitly request their display. They will most often be used for system or software configuration. This is why many people, including myself, pay particular attention to the management and/or centralisation of these files: this allows both the sharing of the configuration of a particular software and the easy migration of one's working environment from one workstation to another.

## Dotfiles managers

The first thing to do when you want to share or save your dotfiles is to create [an automation of the process](https://www.freecodecamp.org/news/build-your-own-dotfiles-manager-from-scratch/). And of course, there are programs to do this. For example, there is [chezmoi.io](https://www.chezmoi.io/), which does a lot of things (management of multiple environments, management of secrets, etc.). Too much perhaps, because its good use requires a significant learning. But there are also many others: [yadm](https://yadm.io/), [dotbot](https://github.com/anishathalye/dotbot) or even [dot](https://github.com/sds/dot)...

> For this ... at least third version of my dotfiles repo, I opted for **[stow](https://www.gnu.org/software/stow/)**, a safe bet in the GNU world, which does one thing (a symlink farm manager), but does it well.

## Organization of the repository

We will find configuration files, but also installation scripts allowing to automate the setting up of a custom environment on a new machine. So there are two directories:

* `dotfiles`: the configuration files ready to be *symlinked* by `stow`,
* `install`: the scripts for automating the installation and configuration of my environment on a **Linux OS**.
