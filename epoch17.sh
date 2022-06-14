#!/bin/sh

echo "Starting the shell script"
echo "Setting background"
#sudo apt update
#sudo apt upgrade
echo "Installing python-pip"
sudo apt-get install python3-pip python-dev
echo "Installing requirements.txt"
pip3 install -r requirements.txt

cd dataset

#curl http://www.princeton.edu/~jzthree/datasets/ICML2014/cullpdb+profile_6133.npy.gz --output cullpdb+profile_6133.npy.gz 

#gunzip cullpdb+profile_6133.npy.gz

wget -S --header="accept-encoding: gzip" http://www.princeton.edu/~jzthree/datasets/ICML2014/cullpdb+profile_6133_filtered.npy.gz

gunzip cullpdb+profile_6133_filtered.npy.gz

wget -S --header="accept-encoding: gzip" http://www.princeton.edu/~jzthree/datasets/ICML2014/cb513+profile_split1.npy.gz

gunzip cb513+profile_split1.npy.gz

cd ..


echo "Set environment variables"
export NUM_EPOCHS=1
echo "--------------------------------------------------------------"
export CNN_WIDTH=11
#python3 main.py
echo "--------------------------------------------------------------"
export CNN_WIDTH=13
#python3 main.py
echo "--------------------------------------------------------------"
#export CNN_WIDTH=15
#python3 main.py
echo "--------------------------------------------------------------"
export CNN_WIDTH=17
python3 main.py
echo "--------------------------------------------------------------"
export CNN_WIDTH=19
#python3 main.py
echo "--------------------------------------------------------------"
export CNN_WIDTH=21
#python3 main.py