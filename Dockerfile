FROM eclipse-temurin:17

WORKDIR /app

COPY . /app

# Compile all Java files anywhere in the project
RUN find . -name "*.java" -print0 | xargs -0 javac

# Run the Main class
CMD ["java", "Main"]
