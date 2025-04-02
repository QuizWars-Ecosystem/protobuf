# protobuf
Proto scripts for services and clients

## Commands to install all tools
### Go 
- ```wp-cli
    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
    ```
or run ```make go-install-deps```

### Kotlin
- ```wp-cli
    curl -o protoc-gen-grpc-kotlin.jar -L https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/1.4.0/protoc-gen-grpc-kotlin-1.4.0-jdk8.jar
    chmod +x protoc-gen-grpc-kotlin.jar
    ```

or run ```make kotlin-install-deps```