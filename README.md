# Spring Grpc Http

![Build Status](https://travis-ci.com/thinhdanggroup/spring_grpc_http.svg?branch=master)

This project is a simple example about How to build GRpc and Http API with Spring (without proxy).

More detail about this project at [here](https://medium.com/@thinhda/build-service-that-provides-http-and-grpc-api-with-spring-9e7cff7aa17a)

## Prerequisites

- Java 8
- Bazel

## Getting Started

### Get started with Java

```sh
# go to `core` folder, which contains pom.xml
cd core

# use maven to build
bazel build //src/main/java:spring_grpc_http_springboot

# run binary by java command
java -jar bazel-bin/src/main/java/spring_grpc_http_springboot.jar
```

### Validate

Use Curl to validate HTTP API

```sh
curl --location --request POST 'http://localhost:6789/api/ping' \
--header 'Content-Type: application/json' \
--data-raw '{
  "timestamp": 20
}'

# Response:
# {
#   "timestamp": "20",
#   "message": "Pong"
# }

```

## Benchmark

Use simple [go client](benchmark/main.go)

```
go run main.go
```

Results

![result](images/benchmark.png)

- Throughput gRPC (*6183req/s*) **>2x** with Http (*2672req/s*)