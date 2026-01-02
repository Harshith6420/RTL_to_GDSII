sudo apt install python3.10-venv --assume-yes
echo
echo
echo "*********************** cloning openlane and start installation of open lane******************"
echo
echo
git clone https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane/
sudo make
sudo make test
