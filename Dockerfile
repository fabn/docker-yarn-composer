FROM composer:1.4

ENV YARN_VERSION 0.22.0
# Update path with yarn path
ENV PATH "$HOME/.yarn/bin:$PATH"
# Install tar package, that's needed 
RUN apk --no-cache add tar nodejs
# Install yarn
RUN rm -rf /root/.yarn && touch ~/.bashrc && curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version ${YARN_VERSION}
