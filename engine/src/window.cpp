#include "window.h"
#include "log.h"

#include <SDL2/SDL.h>

namespace uge {

    window::window(const char* title, vector2 size) :
        _title(title),
        _size(size),
        _running(true)
    {
        DEBUG_LOG("Initializing window \"" << _title << "\"");
    }

    window::~window() {
        DEBUG_LOG("Destroying window \"" << _title << "\"");

        SDL_DestroyRenderer(_sdl_renderer);
        SDL_DestroyWindow(_sdl_window);
        SDL_Quit();
    }

    void window::start() {
        init();

        if (SDL_Init(SDL_INIT_VIDEO) < 0) {
            DEBUG_LOG("Failed to initialize SDL: " << SDL_GetError());
            return;
        }

        _sdl_window = SDL_CreateWindow(
                _title,
                SDL_WINDOWPOS_UNDEFINED,
                SDL_WINDOWPOS_UNDEFINED,
                _size.x, _size.y,
                SDL_WINDOW_SHOWN
        );

        if (!_sdl_window) {
            DEBUG_LOG("Failed to create window: " << SDL_GetError());
            return;
        }

        _sdl_renderer = SDL_CreateRenderer(
                _sdl_window,
                -1,
                SDL_RENDERER_ACCELERATED
        );

        if (!_sdl_renderer) {
            DEBUG_LOG("Failed to create renderer: " << SDL_GetError());
            return;
        }

        SDL_SetRenderDrawColor(_sdl_renderer, 0, 0, 0, 255);

        ready();

        while (_running) {
            frame();

            SDL_Event e;
            while (SDL_PollEvent(&e)) {
                event(e);
            }

            draw();

            SDL_RenderClear(_sdl_renderer);

            SDL_RenderPresent(_sdl_renderer);

            update();
        }

        quit();
    }

    void window::init() {
        on_init();
    }

    void window::ready() {
        on_ready();
    }

    void window::frame() {
        on_frame();
    }

    void window::draw() {
        on_draw();
    }

    void window::update() {
        on_update();
    }

    void window::quit() {
        on_quit();
    }

    void window::event(SDL_Event& e) {
        if (e.type == SDL_QUIT) {
            _running = false;
        }

        on_event(e);
    }

}
