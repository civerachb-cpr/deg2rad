deg2rad
=========

This is a super simple pair of Python scripts that allow converting between
degrees and radians.  The intent is to make user-configurable ROS envar
setup a little easier.

Installation
--------------

Just run `sudo bash install.sh` to install the 2 scripts to /usr/local/bin.

Alternatively, you can install `checkinstall` and use `sudo bash bkpkg.sh`
to build and install a .deb package for easier portability, should you want to
include this utility in e.g. an installation ISO, or other software bundle.

Usage
------

Anyone with familiarity with Python should be able to figure it out.  The
scripts accept any number of command-line arguments, parse them as floats,
and convert them to degrees/radians, printing one value per line.

e.g.

```bash
$ deg2rad 90
1.57079632679
```

```bash
$ rad2deg -0.758 0.349 1.047
-43.4302008709
19.9962270501
59.9886811502
```

Obviously there's some rounding, so if you need exceptionally high-precision
you're better off doing it with an external program.  But for basic
customization, this should do.

e.g.

```bash
export ROBOT_ARM_ANGLE=$(deg2rad 30)
```

could be used to set an offset of 30 degrees in a more human-readable format
than the equivalent declaration purely in radians:

```bash
export ROBOT_ARM_ANGLE=0.523598775598
```
