#user guide
http://garfieldpp.web.cern.ch/garfieldpp/documentation/UserGuide.pdf

#installation method
# set environment
export GARFIELD_HOME=/home/muhammad/work/Tools/garfield

# Dowlaoad the source code
git clone ssh://git@gitlab.cern.ch:7999/garfield/garfieldpp.git $GARFIELD_HOME

# upgrade gcc 4.8 to 4.9 using info from:
https://wiki.audacityteam.org/wiki/Upgrade_to_gcc_4.9

#  Using the first method, just type
make

# Setting Heet environment, add this to .bashrc file
export HEED_DATABASE=$GARFIELD_HOME/Heed/heed++/database/
#Following for the second method
-------------------------------
# Building the library
# make build directory
mkdir $GARFIELD_HOME/build; cd $GARFIELD_HOME/build

#set the ROOTSYS path first
export PATH="/home/muhammad/root6/build/bin:$PATH"
export LD_LIBRARY_PATH="/home/muhammad/root6/build/lib:$LD_LIBRARY_PATH"
export ROOTSYS="/home/muhammad/root6/build/bin:$PATH"

# run cmake
cmake -DCMAKE_BUILD_TYPE=Debug $GARFIELD_HOME
make
make install
rm -rf build
-------------------------------------------

