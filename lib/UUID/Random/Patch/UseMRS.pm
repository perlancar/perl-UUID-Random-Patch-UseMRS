package UUID::Random::Patch::UseMRS;

# VERSION

require Math::Random::Secure;

# testing
#*UUID::Random::rand = sub { die };

*UUID::Random::rand = \&Math::Random::Secure::rand;

require UUID::Random;

1;
# ABSTRACT: Make UUID::Random use Math::Random::Secure's rand()

=head1 SYNOPSIS

 use UUID::Random::Patch::UseMRS;
 say UUID::Random::generate();


=head1 DESCRIPTION

This module makes L<UUID::Random> use C<rand()> from L<Math::Random::Secure>
instead of the default C<rand()> that comes with Perl. It is useful for creating
cryptographically secure UUID's. On the other hand, as a note, this makes
generate() around 20 times slower.

After you C<use> this module, use UUID::Random as usual.


=head1 SEE ALSO

L<Math::Random::Secure>

L<UUID::Random>

=cut
