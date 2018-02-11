FROM circleci/node:8.9
RUN sudo npm install -g create-elm-app --unsafe-perm=true
RUN sudo git clone https://github.com/obmarg/libsysconfcpus.git
RUN sudo -- sh -c 'cd libsysconfcpus; ./configure; make; make install; cd ..'
