FROM google/nodejs
COPY usermod.sh /root/usermod.sh
RUN useradd -u 3333 -d /home/builder -s /bin/bash -o -m builder && chmod +x /root/usermod.sh
COPY npmrc /home/builder/.npmrc
COPY bowerrc /home/builder/.bowerrc
ENTRYPOINT [ "/root/usermod.sh" ]
