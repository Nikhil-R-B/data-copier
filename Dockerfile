FROM python:3.11

# Install OS Modules
RUN apt update -y && \
    apt install telnet -y && \
    rm -rf /var/lib/apt/lists/*

# Copy source code
RUN mkdir -p /data-copier
COPY app/ /data-copier
COPY requirements.txt /data-copier

# Install application dependencies
RUN pip install -r /data-copier/requirements.txt
