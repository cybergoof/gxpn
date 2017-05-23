FROM remnux/metasploit
# RUN apt-get update
# RUN mkdir /var/run/sshd
# RUN echo 'root:screencast' | chpasswd
# RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
# RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# ENV NOTVISIBLE "in users profile"
# RUN echo "export VISIBLE=now" >> /etc/profile

# EXPOSE 22
COPY ./init.sh /tmp/
# COPY ./entrypoint.sh /tmp
RUN "/tmp/init.sh"
WORKDIR "/opt/msf"
CMD "/opt/msf/msfconsole"
