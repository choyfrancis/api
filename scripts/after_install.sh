#!/usr/bin/env bash
set -euo pipefail

cd /srv/test-api
runuser -u ec2-user -- npm ci --omit=dev
chown -R ec2-user:ec2-user /srv/test-api