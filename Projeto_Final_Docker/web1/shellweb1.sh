#!/bin/bash

echo "/usr/share/nginx/html *(rw,sync,subtree_check)" >> /etc/exports
exports -ar