# Copyright (c) 2016 Kaito Udagawa
# Copyright (c) 2016-2020 3846masa
# Released under the MIT license
# https://opensource.org/licenses/MIT

FROM ubuntu:latest

#test commnad
RUN echo "Hello World!"

#Base setup
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y perl
    
#install texlive
RUN echo "Install Texlive"
RUN apt-get install -y texlive-lang-japanese 
# RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
#     tar xvf install-tl-unx.tar.gz && \
#     cd install-tl* && \ 
#     chmod 755 ./install-tl && \
#     echo "I" > input && \
#     cat input && \
#     ./install-tl -no-gui -repository http://mirror.ctan.org/systems/texlive/tlnet/  < input && \
#     /usr/local/texlive/*/bin/*/tlmgr path add && \
#     tlmgr update --self --all && \
#     tlmgr paper a4 && \
#     tlmgr install collection-langjapanese 

RUN echo "finished"
