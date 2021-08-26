;; To use this file to build HEAD of gemma-s:
;;
;;   guix build -f guix.scm
;;
;; To get a development container (e.g., run in emacs shell).
;;
;;   guix environment -C -l guix.scm

(use-modules
  ((guix licenses) #:prefix license:)
  (guix gexp)
  (guix packages)
  (guix git-download)
  (guix build-system meson)
  (gnu packages algebra)
  (gnu packages base)
  (gnu packages compression)
  (gnu packages crates-io)
  (gnu packages bioinformatics)
  (gnu packages build-tools)
  (gnu packages curl)
  (gnu packages gdb)
  ; (gnu packages llvm)
  (gnu packages libffi)
  (gnu packages maths)
  (gnu packages ninja)
  (gnu packages pkg-config)
  (gnu packages ruby)
  (gnu packages rust)
  (srfi srfi-1)
  (ice-9 popen)
  (ice-9 rdelim))

(define %source-dir (dirname (current-filename)))

(define %git-commit
    (read-string (open-pipe "git show HEAD | head -1 | cut -d ' ' -f 2" OPEN_READ)))

(define %gemma-version
    (read-string (open-pipe "cat VERSION" OPEN_READ)))

(define-public gemma-s-git
  (package
    (name "gemma-s-git")
    (version (git-version %gemma-version "HEAD" %git-commit))
    (source (local-file %source-dir #:recursive? #t))
    (build-system meson-build-system)
    (inputs `(
              ("gdb" ,gdb)
              ("gsl" ,gsl)
              ("openblas" ,openblas)
              ("ruby@2.6.5" ,ruby)
              ("ruby-ffi" ,ruby-ffi)
              ("rust" ,rust)
              ("rust:cargo" ,rust "cargo")
              ("rust-libc" ,rust-libc-0.2)
              ("zlib:static" ,zlib "static")
              ("zlib" ,zlib)
              ))
    (home-page "https://github.com/genetics-statistics")
    (synopsis "Tool for genome-wide efficient mixed model association")
    (description "Genome-wide Efficient Mixed Model Association (GEMMA)
provides a standard linear mixed model resolver with application in
genome-wide association studies (GWAS).")
    (license license:gpl3)))

gemma-s-git
