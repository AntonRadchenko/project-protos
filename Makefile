PROTOS := proto/user/*.proto proto/task/*.proto
OUT_DIR := .

generate:
	protoc \
		--go_out=$(OUT_DIR) --go_opt=module=github.com/AntonRadchenko/project-protos \
		--go-grpc_out=$(OUT_DIR) --go-grpc_opt=module=github.com/AntonRadchenko/project-protos \
		$(PROTOS)

clean:
	find . -name "*.pb.go" -delete