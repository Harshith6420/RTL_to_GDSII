echo "****************Installing yosys dependencies ****************"
apt update
apt install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev --assume-yes

echo "****************cloning yosys and will start installation of yosys ****************"
git clone https://github.com/YosysHQ/yosys.git
cd yosys
make
make install
cd

echo "****************cloning openSTA and will start installation of openSTA ****************"
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
apt install cmake --assume-yes
apt update -y --assume-yes
apt install -y swig --assume-yes
cmake ..
make
make install
cd

##Install Icarus Verilog

apt install -y autoconf gperf make gcc g++ bison flex
git clone https://github.com/steveicarus/iverilog.git
cd iverilog
chmod 777 autoconf.sh
./autoconf.sh
./configure
make
make install
cd


echo "**************** Installing gtkwave ****************"
apt install gtkwave --assume-yes

#To install netlist viewer
cd
apt install npm --assume-yes
git clone https://github.com/nturley/netlistsvg
cd netlistsvg
npm install --legacy-peer-dops --assume-yes
npm install -g . --assume-yes
cd






