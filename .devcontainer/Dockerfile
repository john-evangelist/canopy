ARG ELIXIR_VERSION
ARG PHX_VERSION

FROM elixir:$ELIXIR_VERSION

# Environment variables for ASDF
ENV ASDF_VERSION="v0.16.4" LANG=C.UTF-8
ENV APP_HOME /app

RUN curl -sfL https://direnv.net/install.sh | bash && \
    echo 'eval "$(direnv hook bash)"' >> ~/.bashrc && \
    echo 'source ~/.bashrc' >> ~/.bash_profile && \
    apt-get update && \
    apt-get install -y --no-install-recommends curl git inotify-tools  && \
    curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs && \
    mkdir $APP_HOME && \
    mix local.hex --force && mix local.rebar --force && \
    mix archive.install --force hex phx_new $PHX_VERSION && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 

WORKDIR $APP_HOME
