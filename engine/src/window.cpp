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

        ready();

        while (_running) {
            auto start_time = SDL_GetTicks();

            frame();

            SDL_Event e;
            while (SDL_PollEvent(&e)) {
                event(e);
            }

            set_render_color(_clear_color);

            SDL_RenderClear(_sdl_renderer);

            draw();

            SDL_RenderPresent(_sdl_renderer);

            update();

            if (_fps_limit != 0 && SDL_GetTicks() - start_time < 1000 / _fps_limit)
                SDL_Delay((1000 / _fps_limit) - (SDL_GetTicks() - start_time));
        }

        quit();
    }

    void window::stop() {
        _running = false;
    }

    void window::set_render_color(color color) {
        SDL_SetRenderDrawColor(
                _sdl_renderer,
                color.r,
                color.g,
                color.b,
                color.a
        );
    }

    void window::draw_rect(vector2 pos, vector2 size, color color) {
        set_render_color(color);
        SDL_Rect rect = { (int)pos.x, (int)pos.y, (int)size.x, (int)size.y };
        SDL_RenderFillRect(_sdl_renderer, &rect);
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
        SDL_DestroyRenderer(_sdl_renderer);
        SDL_DestroyWindow(_sdl_window);
        SDL_Quit();

        on_quit();
    }

    void window::event(SDL_Event& e) {
        if (e.type == SDL_QUIT) {
            _running = false;
        }

        on_event(e);
    }

}
