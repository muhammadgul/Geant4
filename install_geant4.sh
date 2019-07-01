#upgrade ubuntu from 14 to 16
#https://www.tecmint.com/upgrade-ubuntu-14-04-to-16-04/
#run command sudo update-manager -d and then started the updates by clicking on the windows

mkdir Tools; cd Tools; mkdir geant4; cd geant4

#install cmake latest version
sudo apt-get install cmake

#Geant4 main page
#https://geant4.web.cern.ch/
#Download it
wget http://geant4.cern.ch/support/source/geant4.10.05.tar.gz
#untar it
tar -zxf geant4.10.05.tar.gz

rm geant4.10.05.tar.gz
mkdir geant4.10.05-build
mkdir geant4.10.05-install
cd geant4.10.05-build
cmake  -DCMAKE_INSTALL_PREFIX=/home/muhammad/work/Tools/geant4/source/geant4.10.05-install -DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_QT=ON /home/muhammad/work/Tools/geant4/source/geant4.10.05
make -j8
make install

# Now set environment and Qt path
source geant4.10.05-install/bin/geant4.sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/qt5/libexec

#install geant4 step-by-step
http://geant4-userdoc.web.cern.ch/geant4-userdoc/UsersGuides/InstallationGuide/html/installguide.html

http://peiluan-tai.com/Tutorial/Install_GEANT4.html

# build an example
# go out of build directory  
  mkdir build_examples
  cd build_examples/
  mkdir B1_build
  cd B1_build/
cmake -DGeant4_DIR=/home/muhammad/work/Tools/geant4/source/geant4.10.05-install/lib/Geant4-10.5.0/ /home/muhammad/work/Tools/geant4/source/geant4.10.05/examples/basic/B1
make -j8
./exampleB1 exampleB1.in
./exampleB1

#and you will see your nice detector

#before running the examples, run it for setting variables
source geant4.10.05-install/bin/geant4.sh
