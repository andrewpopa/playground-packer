#!/usr/bin/env bash

# install nginx server if not installed
which nginx &>/dev/null || {
  sudo apt-get -y update
  sudo apt-get install -y nginx
}