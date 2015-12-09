FROM google/nodejs
MAINTAINER Ilya Fourmanov <ilya.fourmanov@gmail.com>
COPY run.sh /root/run.sh
RUN  chmod +x /root/run.sh && useradd -u 3333 -d /home/builder -s /bin/bash -o -m builder 
COPY npmrc /home/builder/.npmrc
COPY bowerrc /home/builder/.bowerrc
ENTRYPOINT [ "/root/usermod.sh" ]
