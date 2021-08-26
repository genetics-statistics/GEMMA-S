# GEMMA-S: Genome-wide Efficient Mixed Model Association (Service)

GEMMA is a software toolkit for fast application of linear mixed
models (LMMs) and related models to genome-wide association studies
(GWAS) and other large-scale data sets. This source code repository represents a
version of GEMMA which is under development.

GEMMA as a Service (*GEMMA-S* - it's a GAAS) is a next generation of the original GEMMA. We decided on a fresh start to create a more service oriented solution. For more information see the [big picture](https://portal.mozz.us/gemini/thebird.nl/blog/2021/gemma-big-picture.gmi).

Check out [RELEASE-NOTES.md](RELEASE-NOTES.md) to see what's new in each GEMMA release.

For the stable release of GEMMA, see the [git repository](https://github.com/genetics-statistics/GEMMA).

## FEATURES

For now, GEMMA-S has no real improvements over GEMMA1. For LOCO, parallel compute, permutations and caching, see [gemma-wrapper](https://github.com/genetics-statistics/gemma-wrapper). For validation and BIMBAM/plink/Rqtl2 parsing and conversion see [gemma2lib](https://github.com/genetics-statistics/gemma2lib).

## DEVELOPMENT

To contribute, see the development [docs](doc/gemma-s-development.md).

## LICENSE

Copyright (C) 2012–2021, Xiang Zhou, Pjotr Prins and team.

The *GEMMA-S* source code repository is free software: you can
redistribute it under the terms of the [GNU General Public
License](http://www.gnu.org/licenses/gpl.html). All the files in this
project are part of *GEMMA-S*. This project is distributed in the hope
that it will be useful, but **without any warranty**; without even the
implied warranty of **merchantability or fitness for a particular
purpose**. GEMMA-S is published under the GPL-3.0 License. See
[LICENSE](LICENSE).

## Reporting a GEMMA-S bug or issue

For bugs GEMMAv1 has an
[issue tracker](https://github.com/genetics-statistics/GEMMA/issues)
on github. For general support GEMMA has a mailing list at
[gemma-discussion](https://groups.google.com/forum/#!forum/gemma-discussion).

Before posting an issue search the issue tracker and mailing list
first. It is likely someone may have encountered something
similiar. Also try running the latest version of GEMMA to make sure it
has not been fixed already. Support/installation questions should be
aimed at the mailing list - it is the best resource to get answers.

The issue tracker is specifically meant for development issues around
the software itself. When reporting an issue include the output of the
program and the contents of the .log.txt file in the output directory.

## Code of conduct

By using GEMMA and communicating with its communtity you implicitely
agree to abide by the [code of
conduct](https://software-carpentry.org/conduct/) as published by the
Software Carpentry initiative.

## Credits

*GEMMA-S* is developed by

[Pjotr Prins](http://thebird.nl/)<br>
Dept. of Genetics, Genomics and Informatics<br>
University of Tennessee Health Science Center<br>

and

[Xiang Zhou](http://www.xzlab.org)<br>
Dept. of Biostatistics<br>
University of Michigan<br>

See also [contributors](https://github.com/genetics-statistics/GEMMA-S/graphs/contributors).

[latest_release]: https://github.com/genetics-statistics/GEMMA-S/releases "Most recent stable releases"

The original *GEMMA* software was developed by:

[Xiang Zhou](http://www.xzlab.org) and [Pjotr Prins](http://thebird.nl/)
with contributions from Peter Carbonetto, Tim Flutre, Matthew Stephens,
and others - see also [contributors](https://github.com/genetics-statistics/GEMMA/graphs/contributors).
