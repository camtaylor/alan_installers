#!/usr/bin/env bash

# written by @github user gameslayer
echo "Installing dependancies for Alan"
sudo apt-get install festival
sudo apt-get install pocketsphinx-utils
sudo apt-get install libjack0 libjack-dev
sudo apt-get install portaudio19-dev
sudo apt-get install python-all-dev
sudo apt-get install pip
sudo -s pip install SpeechRecognition
sudo -s pip install -U nltk
python <<END
import nltk 
nltk.download('all')
END
sudo -s pip install bs4
sudo -s pip install wolframalpha
sudo pip install pyaudio
sudo apt-get install git

echo "Downloading alan from github"
git clone https://github.com/camtaylor/alan.git
