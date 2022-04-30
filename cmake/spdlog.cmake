include(fetchContent)
FetchContent_Declare(
        spdlog #库名字
        GIT_REPOSITORY https://github.com/gabime/spdlog # 仓库地址
        GIT_TAG v1.10.0 # 库版本
)

FetchContent_MakeAvailable(spdlog)

