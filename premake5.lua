outdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

workspace "untitled-game-engine"
    architecture "x86_64"
    configurations { "debug", "release" }
    startproject "sandbox"

    libdirs
    {
        "vendor/SDL2/build"
    }

    group ""
        include "engine"
        include "sandbox"
