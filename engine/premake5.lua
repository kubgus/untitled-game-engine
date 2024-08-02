project "engine"
    location "%{wks.location}/%{prj.name}"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outdir .. "/%{prj.name}")
    objdir ("%{wks.location}/obj/" .. outdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        "src"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        defines { "DEBUG", "UGE_DEBUG" }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        defines { "NDEBUG", "UGE_RELEASE" }

    filter "system:windows"
        defines { "UGE_PLATFORM_WINDOWS" }

    filter "system:linux"
        defines { "UGE_PLATFORM_LINUX" }
        links { "pthread" }
