#!/usr/bin/env bash

# contributed to by @github user gameslayer

echo "Installing dependancies for Alan"
apt-get install git
apt-get install python-pip
apt-get install festival
apt-get install libjack0 libjack-dev
apt-get install portaudio19-dev
apt-get install python-all-dev
apt-get install pip
pip install SpeechRecognition
pip install -U nltk
python <<END
import nltk 
nltk.download('all')
END
pip install bs4
pip install wolframalpha
apt-get install pyaudio
apt-get install git
apt-get install libopencv-dev python-opencv


echo "Downloading dependencies for pocketsphinx"
apt-get install autconf
apt-get install bison
apt-get install libtool
apt-get install swig
apt-get install automake
apt-get install gcc
git clone https://github.com/cmusphinx/sphinxbase
git clone https://github.com/cmusphinx/pocketsphinx
(cd sphinxbase && ./autogen.sh)
(cd sphinxbase && ./configure)
(cd sphinxbase && make)
(cd sphinxbase && make install)
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
(cd pocketsphinx && ./autogen.sh)
(cd pocketsphinx && ./configure)
(cd pocketsphinx && make)
(cd pocketsphinx && make install)

echo "Downloading alan from github"
git clone https://github.com/camtaylor/alan.git
(cd alan && bash passive_listening.sh)
