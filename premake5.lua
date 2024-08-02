outdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

workspace "untitled-game-engine"
    configurations { "debug", "release" }
    architecture "x86_64"
    startproject "sandbox"

    include "engine"
    include "sandbox"

