FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy everything into the container
COPY . /app

# Compile all Java files inside src/
RUN javac src/*.java src/Employee/*.java

# Run the Main class (from src/)
CMD ["java", "-cp", "src", "Main"]

