# For gitlab-ci.yml

# Use a single-stage build for simplicity 
FROM python:3.11-slim

# Set WORKDIR
WORKDIR /app

# Install Poetry
RUN pip install poetry
RUN which poetry 
RUN poetry --version

# Install dependencies
COPY poetry.lock pyproject.toml /app/
RUN poetry lock
RUN poetry install --no-root
# Copy project files
COPY . /app

# Expose port (optional, Uvicorn handles it by default)
EXPOSE 8000 

# Set Uvicorn command using environment variables for flexibility
ENV API_ENTRYPOINT="src.api:app"
CMD ["uvicorn", "src.api:app", "--host", "0.0.0.0", "--port", "8000"]