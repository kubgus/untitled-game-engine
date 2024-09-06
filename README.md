# Untitled Game Engine

Untitled Game Engine (UGE) is a simple C++ library for making SDL2 games.

## Build Instructions

### Make sure you have `SDL2` installed on your system.

```bash
sdl2-config --version
```

#### Linux Install

**Debian**
```bash
sudo apt install libsdl2-dev
```

**Fedora**
```bash
sudo dnf install SDL2-devel
```

**Arch Linux**
```bash
sudo pacman -S sdl2
```

#### Windows Install

Visit [libsdl.org](https://libsdl.org/) and download the latest SDL2 release.

### Build UGE

#### Linux

Run the `scripts/build.sh` script to build UGE and Sandbox.

```bash
sh scripts/build.sh
```

> ***Note:*** Make sure to run from the base directory.

#### Windows

1. Install and run [premake5](https://github.com/premake/premake-core/releases).
2. Use build tool you've defined in premake to build UGE and Sandbox.

### Run Sandbox

Run executable from `bin/`.

## Usage

```cpp
#include "uge.h"

#include <SDL2/SDL.h>

struct roadrunner {
    uge::vector2 pos;
    int speed = 3;
};

class app : public uge::window {
public:
    app() : uge::window("app", { 800, 600 }) {}

    roadrunner steve = { 20, 10 };
protected:
    void on_ready() override {
        _clear_color = { 0x11, 0x11, 0x11, 0xFF };
        _fps_limit = 30;
    }

    void on_draw() override {
        draw_rect(steve.pos, { 20, 20 }, { 255, 0, 255 });
    }

    void on_update() override {
        steve.pos.x += steve.speed;
    }

    void on_event(SDL_Event& event) override {
        if (event.key.keysym.sym == SDLK_ESCAPE) {
            stop();
        }
    }
};

int main() {
    app app;
    app.start();
}
```
