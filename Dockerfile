FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl && \
	curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
	chmod 755 msfinstall && \
	./msfinstall
	
CMD msfrpcd -P 123456 -n -f -a 127.0.0.1