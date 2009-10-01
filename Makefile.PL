use 5.006000;
use ExtUtils::MakeMaker;
use Config;

($^O eq 'darwin')
  || die("OS unsupported\n");

WriteMakefile(
    NAME              => 'Mac::SystemDirectory',
    VERSION_FROM      => 'lib/Mac/SystemDirectory.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Mac/SystemDirectory.pm', # retrieve abstract from module
       AUTHOR         => 'Christian Hansen <chansen@cpan.org>') : ()),
    LIBS              => [''], # e.g., '-lm'
    LDDLFLAGS         => $Config{lddlflags} . '-lobjc -framework CoreFoundation -framework Foundation',
    DEFINE            => '-ObjC', # e.g., '-DHAVE_SOMETHING'
	# Insert -I. if you add *.h files later:
    INC               => '', # e.g., '-I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # OBJECT            => '$(O_FILES)', # link all the C files too
);

