;;-*-coding: emacs-mule;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Custom-mode-abbrev-table '())

(define-abbrev-table 'awk-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'c++-mode-abbrev-table
  '(
    ("incy" "" skeleton-include 1)
    ("incz" "" skeleton-include-user 1)
   ))

(define-abbrev-table 'c-mode-abbrev-table
  '(
    ("incy" "" skeleton-include 1)
    ("incz" "" skeleton-include-user 1)
   ))

(define-abbrev-table 'change-log-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'cperl-mode-abbrev-table
  '(
    ("usedump" "use Data::Dumper qw(Dumper);" pde-abbv-no-blank 0)
    ("useenc" "use Encode qw(encode decode from_to);" pde-abbv-no-blank 0)
    ("usegtk" "use Gtk2 '-init';
use Glib qw(TRUE FALSE);

my $window = Gtk2::Window->new('toplevel');
$window->signal_connect('delete_event' => sub { Gtk2->main_quit; });" pde-abbv-no-blank 0)
    ("useopt" "use Getopt::Long;
GetOptions();" pde-abbv-no-blank 0)
   ))

(define-abbrev-table 'diff-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table '())

(define-abbrev-table 'html-mode-abbrev-table '())

(define-abbrev-table 'idl-mode-abbrev-table '())

(define-abbrev-table 'imenu-tree-mode-abbrev-table '())

(define-abbrev-table 'java-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'log-edit-mode-abbrev-table '())

(define-abbrev-table 'objc-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'php-mode-abbrev-table '())

(define-abbrev-table 'pike-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'python-mode-abbrev-table '())

(define-abbrev-table 'rails-script:output-mode-abbrev-table '())

(define-abbrev-table 'rails-test:compilation-mode-abbrev-table '())

(define-abbrev-table 'remember-mode-abbrev-table '())

(define-abbrev-table 'rhtml-mode-abbrev-table '())

(define-abbrev-table 'ruby-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'sgml-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'snippet-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'sql-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'svn-log-edit-mode-abbrev-table '())

(define-abbrev-table 'svn-log-view-mode-abbrev-table '())

(define-abbrev-table 'svn-status-diff-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'tree-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

