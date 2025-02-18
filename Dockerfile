ARG BASE_IMAGE=library/python:3

FROM docker.io/${BASE_IMAGE}

ARG WAYBACKPROXY_REPO=https://github.com/richardg867/WaybackProxy
ARG WAYBACKPROXY_BRANCH=master

ARG LISTEN_PORT=8888
ARG DATE=20011025
ARG DATE_TOLERANCE=365
ARG GEOCITIES_FIX=true
ARG QUICK_IMAGES=true
ARG WAYBACK_API=true
ARG CONTENT_TYPE_ENCODING=true
ARG SILENT=false
ARG SETTINGS_PAGE=true

WORKDIR /app
RUN <<-EOT sh
	set -eu

	wget ${WAYBACKPROXY_REPO}/archive/refs/heads/${WAYBACKPROXY_BRANCH}.tar.gz -O - \
		| tar -xzv --strip-components=1
	
	pip install -r /app/requirements.txt
EOT

EXPOSE 8888

CMD [ "sh", "/app/startup.sh" ]
