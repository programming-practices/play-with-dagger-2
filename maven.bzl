load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@dagger//:workspace_defs.bzl", "DAGGER_ARTIFACTS", "DAGGER_REPOSITORIES")

def maven():
    maven_install(
        name = "dagger_lib",
#        exported_plugins = ["dagger_plugin"],
        artifacts = [
            "com.google.dagger:dagger:2.25.2",
            "com.google.dagger:dagger-compiler:2.25.2",
            "javax.inject:javax.inject:1",
        ],
        repositories = [
            "https://maven.google.com",
            "https://repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        version_conflict_policy = "pinned",
    )

    maven_install(
        name = "maven",
        artifacts = [
            "com.google.dagger:dagger:2.25.2",
            "com.google.dagger:dagger-compiler:2.25.2",
            "org.slf4j:slf4j-api:1.7.26",
            "org.slf4j:slf4j-simple:1.7.28",
            "org.apache.logging.log4j:log4j-core:2.13.0",
            "org.apache.logging.log4j:log4j-api:2.13.0",
            "org.apache.logging.log4j:log4j-slf4j-impl:2.13.0",
            "javax.annotation:javax.annotation-api:1.2",
        ],
        repositories = [
            "https://maven.google.com",
            "https://repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        version_conflict_policy = "pinned",
    )

    maven_install(
        name = "maven_test",
        artifacts = [
            "org.assertj:assertj-core:3.16.1",
            "org.junit.jupiter:junit-jupiter-engine:5.6.2",
            "org.junit.jupiter:junit-jupiter-api:5.6.2",
            "org.junit.platform:junit-platform-console:1.5.2",
            "org.mockito:mockito-junit-jupiter:2.23.0",
            "org.mockito:mockito-core:2.23.0",
        ],
        repositories = [
            "https://repo1.maven.org/maven2",
        ],
        fetch_sources = True,
    )
