# Container to use
FROM python

# Setup directory 
RUN mkdir -p /app
WORKDIR /app

# Pull git project
RUN git clone https://github.com/JaySpell/carmen.git

# Copy requirements and run install
RUN pip install --requirement /app/carmen/requirements.txt

# Execute code
CMD python /app/carmen/carmen.py