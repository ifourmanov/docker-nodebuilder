FROM google/nodejs
COPY usermod.sh /root/usermod.sh
RUN ln -s /nodejs/bin/node /bin/node && ln -s /nodejs/bin/npm /bin/npm \
&& useradd -u 3333 -d /home/builder -s /bin/bash -o -m builder && chmod +x /root/usermod.sh
ENTRYPOINT /root/usermod.sh
