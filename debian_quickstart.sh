#!/usr/bin/env bash

# contributed to by @github user gameslayer

echo "Installing dependancies for Alan"
apt-get install git
apt-get install python-pip
apt-get install festival
apt-get install pocketsphinx-utils
sudo apt-get install pocketsphinx-hmm-en-hub4wsj
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
install pyaudio
apt-get install git

echo "Downloading alan from github"
git clone https://github.com/camtaylor/alan.git
