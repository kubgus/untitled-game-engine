#pragma once

#include "vector2.h"

#include <SDL2/SDL.h>

namespace uge {

    class window {
    public:
        window(const char* title, vector2 size);
        ~window();

        void start();

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
        SDL_Window* _sdl_window;
        SDL_Renderer* _sdl_renderer;
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
