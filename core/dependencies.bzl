load("@rules_jvm_external//:specs.bzl", "maven")

SPRINGBOOT_DEPS = [
    "org.springframework.boot:spring-boot:2.1.6.RELEASE",
    "org.springframework.boot:spring-boot-loader:2.1.6.RELEASE",
    "org.springframework.boot:spring-boot-starter-data-jpa:2.1.6.RELEASE",
    "org.springframework.boot:spring-boot-starter-security:2.1.6.RELEASE",
    "org.springframework.boot:spring-boot-starter-web:2.1.6.RELEASE",
    "org.springframework.boot:spring-boot-configuration-processor:2.1.6.RELEASE",
    "org.springframework.boot:spring-boot-starter-test:2.1.6.RELEASE",
    "mysql:mysql-connector-java:8.0.16",
    "org.projectlombok:lombok:1.18.8",
    "com.fasterxml.jackson.datatype:jackson-datatype-jsr310:2.9.9",
    "org.springframework.security:spring-security-test:5.1.5.RELEASE",
    "org.apache.commons:commons-lang3:3.8.1",
    "org.springframework.kafka:spring-kafka:2.2.7.RELEASE",
    "org.springframework.boot:spring-boot-autoconfigure:2.1.6.RELEASE",
    "com.h2database:h2:1.4.199",
    "org.mockito:mockito-core:2.23.4",
    "junit:junit:4.1",
#    "io.github.lognet:grpc-spring-boot-starter:3.5.3",
#    "io.github.lognet:grpc-spring-boot-starter:3.3.0",
    maven.artifact(
            group = "io.github.lognet",
            artifact = "grpc-spring-boot-starter",
            version = "3.5.3",
            exclusions = [
                    "io.netty:netty-codec-http2",
            ]
        ),
]

GRPC_DEPS = [
#    "io.grpc:grpc-netty:1.21.0",
#    "io.grpc:grpc-protobuf:1.21.0",
#    "io.grpc:grpc-stub:1.21.0",
#    "io.grpc:grpc-services:1.21.0",
]

PROTOBUF_DEPS = [
    "com.google.protobuf:protobuf-java:3.7.1",
    "com.googlecode.protobuf-java-format:protobuf-java-format:1.4",
    maven.artifact(
            group = "com.google.protobuf",
            artifact = "protobuf-java-util",
            version = "3.7.1",
            exclusions = [
                    "com.google.guava:guava",
            ]
        ),
]

MISC_DEPS = [
    "org.mapstruct:mapstruct-jdk8:1.2.0.Final",
    "io.jsonwebtoken:jjwt:0.9.0",
    "org.hamcrest:hamcrest-all:1.3",
    "commons-io:commons-io:2.4",
    "org.apache.httpcomponents:httpclient:4.5.9",
    "io.netty:netty-codec-http2:4.1.45.Final"
]

ALL_DEPS = SPRINGBOOT_DEPS + GRPC_DEPS + PROTOBUF_DEPS + MISC_DEPS
