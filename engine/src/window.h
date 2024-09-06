#pragma once

#include <cstdint>

#include "color.h"
#include "vector2.h"

#include <SDL2/SDL.h>

namespace uge {

    class window {
    public:
        window(const char* title, vector2 size);
        ~window();

        void start();
        void stop();

        inline const char* get_title() const { return _title; }
        inline vector2 get_size() const { return _size; }
        inline bool is_running() const { return _running; }
    protected:
        // runs when start() is called
        virtual void on_init() {}
        // runs after SDL is initialized
        virtual void on_ready() {}
        // runs at start of every frame
        virtual void on_frame() {}
        // runs before screen update
        virtual void on_draw() {}
        // runs after screen update
        virtual void on_update() {}
        // runs when _running is set to false
        virtual void on_quit() {}

        virtual void on_event(SDL_Event& event) {}
    protected:
        // manually set render draw color
        void set_render_color(color color);
        // draw a rectangle
        void draw_rect(vector2 pos, vector2 size, color color);
    protected:
        SDL_Window* _sdl_window;
        SDL_Renderer* _sdl_renderer;

        // black (default)
        color _clear_color;
        // 0 = unlimited (default)
        // <15 = not recommended
        uint8_t _fps_limit = 0;
    private:
        void init();
        void ready();
        void frame();
        void draw();
        void update();
        void quit();

        void event(SDL_Event& event);
    private:
        const char* _title;
        vector2 _size;
        bool _running;
    };

}
