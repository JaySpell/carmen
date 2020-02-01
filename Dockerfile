# Container to use
FROM python

# Setup directory 
RUN mkdir -p /app
WORKDIR /app

# Update
RUN apt update && apt install npm node.js -y
RUN npm install npm@latest -g
RUN /bin/bash
RUN npm install popper.js jquery
RUN npm install bootstrap

# Pull git project
RUN git clone https://github.com/JaySpell/carmen.git

# Copy requirements and run install
RUN pip install --requirement /app/carmen/requirements.txt

# Execute code
CMD python /app/carmen/carmen.py