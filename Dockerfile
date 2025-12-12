FROM eclipse-temurin:17

WORKDIR /app

COPY . /app

# Compile all Java files inside src and subfolders
RUN javac src/*.java src/Employee/*.java

# Run Main class (classpath = src)
CMD ["java", "-cp", "src", "Main"]
