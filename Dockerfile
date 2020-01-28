# Container to use
FROM python

# Setup directory 
RUN mkdir /app/carmen/
WORKDIR /app/carmen/

# Pull git project
RUN git pull https://

# Copy script 
COPY .requirements.txt 

# Execute script
RUN bash setup.sh

# Execute code
CMD python /app/carmen.py