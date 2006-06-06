use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Pipe::Tube::Csv',
    license             => 'perl',
    dist_author         => 'Gabor Szabo <gabor@pti.co.il>',
    create_makefile_pl  => 'traditional',
    create_readme       => 1,
    requires            => {
        'Pipe'                => '0',
        'Test::More'          => '0.47',
        'Text::CSV_XS'        => '0.23',
    },
);

$builder->create_build_script();
