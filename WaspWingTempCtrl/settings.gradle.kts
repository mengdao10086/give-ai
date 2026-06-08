pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        // Xposed API (JCenter 已关闭，使用 Aliyun 镜像)
        maven("https://maven.aliyun.com/repository/jcenter")
    }
}

rootProject.name = "WaspWingTempCtrl"
include(":app")
