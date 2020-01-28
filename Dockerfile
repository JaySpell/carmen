# Container to use
FROM python

# Setup directory 
RUN mkdir -p /app/carmen/
WORKDIR /app/carmen/

# Pull git project
RUN git clone https://github.com/JaySpell/carmen.git

# Copy requirements and run install
RUN pip install --requirement requirements.txt

# Execute script
RUN bash setup.sh

# Execute code
CMD python /app/carmen.py