#include "input.h"

#include <SDL2/SDL.h>

namespace uge {

    input::input(
            std::unordered_set<keycode>& keys,
            std::unordered_set<mouse>& mouse_buttons) :
        _keys(keys),
        _mouse_buttons(mouse_buttons) {}

    bool input::is_key_down(keycode key) {
        return _keys.find(key) != _keys.end();
    }

    bool input::is_mouse_down(mouse button) {
        return _mouse_buttons.find(button) != _mouse_buttons.end();
    }

    vector2 input::get_mouse_position() {
        int x, y;
        SDL_GetMouseState(&x, &y);
        return { x, y };
    }

}
