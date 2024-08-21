FROM python:3.11-slim

# Install PostgreSQL command-line tools
RUN apt-get update && apt-get install -y postgresql-client-15

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the ELT script 
COPY elt_script.py .

# Set the default command to run the ELT script
CMD ["python", "elt_script.py"]