sudo apt install python3-pip
sudo pip3 install keras
sudo pip3 install tensorflow
sudo pip3 install sklearn
sudo pip3 install progressbar
sudo pip3 install opencv-python

sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libx11-dev libatlas-base-dev
sudo apt-get install libgtk-3-dev libboost-python-dev

sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo -H pip2 install -U pip numpy
sudo -H pip3 install -U pip numpy

# Install virtual environment
sudo pip2 install virtualenv virtualenvwrapper
sudo pip3 install virtualenv virtualenvwrapper
echo "# Virtual Environment Wrapper" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
 
############ For Python 2 ############
# create virtual environment
mkvirtualenv facecourse-py2 -p python2
workon facecourse-py2
 
# now install python libraries within this virtual environment
pip3 install scipy matplotlib scikit-image scikit-learn ipython
pip3 install numpy==1.19.5
# quit virtual environment
deactivate
######################################
 
############ For Python 3 ############
# create virtual environment
mkvirtualenv facecourse-py3 -p python3
workon facecourse-py3
 
# now install python libraries within this virtual environment
pip install numpy scipy matplotlib scikit-image scikit-learn ipython
 
# quit virtual environment
deactivate
######################################

wget http://dlib.net/files/dlib-19.6.tar.bz2
tar xvf dlib-19.6.tar.bz2
cd dlib-19.6/
mkdir build
cd build
cmake ..
cmake --build . --config Release
sudo make install
sudo ldconfig
cd ..

pkg-config --libs --cflags dlib-1
############ For Python 2 ############
workon facecourse-py2

############ For Python 3 ############
workon facecourse-py3
# move to dlib's root directory
cd dlib-19.6
python3 setup.py install
# clean up(this step is required if you want to build dlib for both Python2 and Python3)
rm -rf dist
rm -rf tools/python/build
rm python_examples/dlib.so

pip3 install dlib
deactivate
