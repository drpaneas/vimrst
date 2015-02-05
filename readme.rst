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
5. Rhythm.css - https://github.com/Rykka/rhythm.css

Also, we are going to use put some magic in ``.vimrc`` file
by following the guideliens of
PuCon 2012 talk - https://github.com/mbrochh/vim-as-a-python-ide .

Download my configuration
-------------------------
I use Vundle as the tool that helps me to install all the plugins I need
in very simple way.

1. Installation

.. code-block:: bash

   git clone https://github.com/drpaneas/vimrst.git ~

2. Download the following

.. code-block:: bash

   zypper install  python-devel curl
   sudo pip install https://github.com/Rykka/instant-rst.py/archive/master.zip


How to use it
--------------
You can start with ``instantRst -f file.rst`` and Firefox will pop-up.
Then open the file using vim ``vim file.rst`` and use ``InstantRst!``.
Once you've finished, terminate server preview using ``:StopInstantRst!``.

Example
~~~~~~~
1. Open the server ``instantRst -f readme.rst``
2. From another terminal, open the file with vim ``vim readme.rst``
3. Type in vim: ``InstantRst!``

