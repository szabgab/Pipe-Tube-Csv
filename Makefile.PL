use ExtUtils::MakeMaker;

my %opts = (
    NAME	     => 'Pipe::Tube::Csv',
    VERSION_FROM => 'lib/Pipe/Tube/Csv.pm',
    AUTHOR       => 'Gabor Szabo <gabor@szabgab.com>',
    LICENSE      => 'perl',
    PREREQ_PM    => {
        'Pipe'                => '0.03',
        'Test::More'          => '0.47',
        'Text::CSV_XS'        => '0.23',
    },
    META_MERGE        => {
       resources => {
           repository  =>  'https://github.com/szabgab/Pipe-Tube-Csv',
       },
	},
);

WriteMakefile( %opts );
