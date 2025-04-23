# Генерация для серверов (Go)
buf-gen-server:
	buf generate --template buf.gen.go.yaml

# Генерация для клиентов (Kotlin)
buf-gen-client:
	buf generate --template buf.gen.kt.yaml --path external

# Линтинг и проверка
buf-lint:
	buf lint && buf breaking --against ".git#branch=main"

# Обновление зависимостей (если используете BSR)
buf-update:
	buf dep update

go-install-deps:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest &&
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

kotlin-install-deps:
	curl -o protoc-gen-grpc-kotlin.jar -L https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/1.4.0/protoc-gen-grpc-kotlin-1.4.0-jdk8.jar &&
	chmod +x protoc-gen-grpc-kotlin.jar

buf-gen-doc:
	buf generate --template buf.gen.doc.yaml

gen-doc:
	protoc \
		--proto_path=. \
		--doc_out=../docs/QuizWars/tech/grpc \
		--doc_opt=./templates/api-template.tmpl,API-Reference.md,source_relative \
		./external/users/v1/*.proto \
		./external/questions/v1/*.proto

