spinR
=====

A Makefile to compile R + Markdown + LaTeX scripts.

To install, execute

    git submodule add https://github.com/krlmlr/spinR.git spin
    spin/install

in your main directory.  A symlink to the `Makefile` will be placed in your
main directory.  To add it to `.gitignore`, execute

    spin/ignore

.  Commit the changes to the repository.  To update `spinR`, execute

    git submodule update --remote

and commit again.

The name `spin` can be chosen at will -- the scripts work for any directory
name that does not contain spaces.

---------

Licensed under [GPL v3](http://www.gnu.org/copyleft/gpl.html).
