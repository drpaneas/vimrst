########################
RST Quick Start Tutorial
########################

:Authors: pgeorgiadis

:Version: 1.0 of 02/05/2015


Overview
========

Here's a list of plugins we are going to install and configure

1. Vundle - https://github.com/gmarik/Vundle.vim
2. RIV - https://github.com/Rykka/riv.vim
3. InstantRST - https://github.com/Rykka/InstantRst
4. InstantRST Server - https://github.com/rykka/instant-rst.py
5. Rhythm css - https://github.com/Rykka/rhythm.css

Also, we are going to use put some magic in ``.vimrc`` file
by following the guideliens of
PuCon 2012 talk - https://github.com/mbrochh/vim-as-a-python-ide .

Download my configuration
-------------------------
I use Vundle as the tool that helps me to install all the plugins I need
in very simple way.

1. Requirements
  
.. code-block:: bash

   zypper install python-devel curl git
   sudo pip install https://github.com/Rykka/instant-rst.py/archive/master.zip


2. Installation
   
   2.1 Automatic installation

   Just copy and paste the following command in your terminal
   and it will do all the work for you. Just make sure you have
   installed all the requirements from above.

   Type: ``curl http://bit.ly/1DCKEn6 -L -o - | sh``


   2.2 Manual Installation

..  code-block:: bash

   git clone https://github.com/drpaneas/vimrst.git
   cd vimrst
   cp .vimrc $HOME
   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   mkdir -p ~/.vim/colors && cd ~/.vim/colors
   wget http://www.vim.org/scripts/download_script.php?src_id=13400 -O wombat256mod.vim
   vim +PluginInstall +qall
   cd $HOME


How to use it
--------------
You can start with ``instantRst -f file.rst`` and Firefox will pop-up.
Then open the file using vim ``vim file.rst`` and use ``InstantRst!``.
Once you've finished, terminate server preview using ``:StopInstantRst!``.

Example
~~~~~~~
0. Go to the folder of the project: ``cd vimrst``
1. Open the server ``instantRst -f readme.rst``
2. From another terminal, open the file with vim ``vim readme.rst``
3. Type in vim: ``InstantRst!``


