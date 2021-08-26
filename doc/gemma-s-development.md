# GEMMA-S Development

GEMMA-S has a complex set of dependencies. To match our development setup you are encouraged to try and run GNU Guix packages. GNU Guix does not interfere with existing distributions, such as Debian and Ubuntu because all sources are installed in /gnu/store, /var/guix and /etc/guix. Simply remove those directories and GNU Guix is gone!

For Debian, run

```apt-get install guix```

=> https://tracker.debian.org/pkg/guix

Once GNU Guix is installed it is possible to start a development container with

```guix environment -C -l guix.scm```

Inside this container, all necessary tools, such as 'gcc' and 'rust' should be available.
