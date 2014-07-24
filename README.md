Ham-Resources-Utils
===================

This is the README file for Ham::Resources::Utils, for calculation of distance and course beetwen two points of Earth (through coordinates or grid locator), and Sunrise, Sunset and Midday time for these locations (in UTC). Also calculation sexagesimal degrees and grid location. For use mainly for Radio Amateurs.

The module offer the possibility to access to some methods that uses it, for example conversions between sexagesimal degrees into decimal degrees or conversion between grid locator to sexagesimal degrees.

Also access to convert decimal degrees to compas names, and more.


After installation, please consult the tutorial for how to use it. 
'perldoc Ham::Resources::Utils' should work on most systems.

INSTALLATION

To install this module, run the following commands:

	perl Makefile.PL
	make
	make test
	make install

DEPENDENCIES

This module requires these other modules and libraries:

  - Test::More
  - Math::Trig
  - Ham::Locator


SUPPORT AND DOCUMENTATION

After installing, you can find documentation for this module with the
perldoc command.

    perldoc Ham::Resources::Utils

You can also look for information at:

    RT, CPAN's request tracker (report bugs here)
        http://rt.cpan.org/NoAuth/Bugs.html?Dist=Ham-Resources-Utils

    AnnoCPAN, Annotated CPAN documentation
        http://annocpan.org/dist/Ham-Resources-Utils

    CPAN Ratings
        http://cpanratings.perl.org/d/Ham-Resources-Utils

    Search CPAN
        http://search.cpan.org/dist/Ham-Resources-Utils/


LICENSE AND COPYRIGHT

Copyright (C) 2012 CJUAN

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.
