FROM gitpod/workspace-full:2024-04-10-13-34-16

RUN brew update && brew install rabbitmq prometheus grafana
