=name High-precedence passing

=failures 0

=cut

next if ! $finished || $foo < $bar;
if( $foo && !$bar || $baz){ do_something() }
this() && !that() || the_other(); 

#----------------------------------------------------------------

=name Low-precedence passing

=failures 0

=cut

next if not $finished or $foo < $bar;
if( $foo and not $bar or $baz){ do_something() }
this() and not that() or the_other(); 

#----------------------------------------------------------------

=name Basic failure

=failures 3

=cut

next if not $finished || $foo < $bar;
if( $foo && not $bar or $baz){ do_something() }
this() and ! that() or the_other(); 

#----------------------------------------------------------------

=name High-precedence with low precedence self-equals

=failures 0

=TODO this is a failing test

=cut

$sub ||= sub {
   return 1 and 2;
};

#----------------------------------------------------------------

##################################################################
#      $URL$
#     $Date$
#   $Author$
# $Revision$
##################################################################

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# ex: set ts=8 sts=4 sw=4 tw=78 ft=perl expandtab :