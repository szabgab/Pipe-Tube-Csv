package Pipe::Tube::Csv;
use strict;
use warnings;

use base 'Pipe::Tube';

# split up lines of csv file ? and return an array ?
# use the first row as key names and on every other row return a hash of the values ?

sub init {
    my ($self, $expr) = @_;
    $self->logger("Receiving Csv definition");
    $self->{expr} = $expr;
    return $self;
}

sub run {
    my ($self, @input) = @_;

    $self->logger("The grep expression: $self->{expr}");
    if ("Regexp" eq ref $self->{expr}) {
        return grep /$self->{expr}/, @input;
    } else {
        my $sub = $self->{expr};
        return grep { $sub->($_) } @input;
    }
}



1;
