load("@bazel_springboot_rule//tools/springboot:springboot.bzl", "springboot")

APP_DEPS = [
    "//src/main/proto:ping_java_proto",
    "//src/main/proto:ping_java_grpc",
    "@maven//:org_springframework_boot_spring_boot",
    "@maven//:org_springframework_boot_spring_boot_loader",
    "@maven//:org_springframework_boot_spring_boot_starter_data_jpa",
    "@maven//:org_springframework_boot_spring_boot_starter_security",
    "@maven//:org_springframework_boot_spring_boot_starter_web",
    "@maven//:org_springframework_boot_spring_boot_configuration_processor",
    "@maven//:org_springframework_boot_spring_boot_starter_test",
    "@maven//:mysql_mysql_connector_java",
    "@maven//:org_projectlombok_lombok",
    "@maven//:com_fasterxml_jackson_datatype_jackson_datatype_jsr310",
    "@maven//:org_springframework_security_spring_security_test",
    "@maven//:org_apache_commons_commons_lang3",
    "@maven//:org_springframework_kafka_spring_kafka",
    "@maven//:org_springframework_boot_spring_boot_autoconfigure",
    "@maven//:com_h2database_h2",
    "@maven//:org_mockito_mockito_core",
    "@maven//:junit_junit",
    "@maven//:io_github_lognet_grpc_spring_boot_starter",

    "@maven//:io_grpc_grpc_netty",
    "@maven//:io_grpc_grpc_protobuf",
    "@maven//:io_grpc_grpc_stub",
    "@maven//:io_grpc_grpc_services",

    "@maven//:com_google_protobuf_protobuf_java",
    "@maven//:com_googlecode_protobuf_java_format_protobuf_java_format",
    "@maven//:com_google_protobuf_protobuf_java_util",

    "@maven//:org_mapstruct_mapstruct_jdk8",
    "@maven//:io_jsonwebtoken_jjwt",
    "@maven//:org_hamcrest_hamcrest_all",
    "@maven//:commons_io_commons_io",
    "@maven//:org_apache_httpcomponents_httpclient",

    "@maven//:com_google_code_gson_gson",
    "@maven//:org_apache_tomcat_embed_tomcat_embed_core",
    "@maven//:org_springframework_security_spring_security_config",
    "@maven//:org_springframework_security_spring_security_core",
    "@maven//:org_springframework_security_spring_security_web",
    "@maven//:org_springframework_spring_beans",
    "@maven//:org_springframework_spring_context",
    "@maven//:org_springframework_spring_core",
    "@maven//:org_springframework_spring_web",
    "@maven//:org_springframework_spring_webmvc",
    "@maven//:org_slf4j_slf4j_api",
]

java_library(
    name = "lombok",
    exported_plugins = ["lombok_plugin"],
    exports = [
        "@maven//:org_projectlombok_lombok",
    ],
)

java_plugin(
    name = "lombok_plugin",
    processor_class = "lombok.launch.AnnotationProcessorHider$AnnotationProcessor",
    deps = [
        "@maven//:org_projectlombok_lombok",
    ],
    generates_api = 1,
)

java_binary(
    name = "spring_grpc_http_bazel",
    srcs = glob(["**/*.java"]),
    main_class = "com.thinhda.spring.grpc.core.CoreApplication",
    deps = APP_DEPS + [":lombok"],
    runtime_deps = ["//src/main/resources:resources"],
)

java_library(
    name = "application_lib",
    srcs = glob(["**/*.java"]),
    deps = APP_DEPS + [":lombok"],
)

springboot(
    name = "spring_grpc_http_springboot",
    boot_app_class = "com.thinhda.spring.grpc.core.CoreApplication",
    java_library = ":application_lib",
    deps = APP_DEPS + ["//src/main/resources:resources"],
)
