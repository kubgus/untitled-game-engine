#pragma once

#include <unordered_set>

#include "vector2.h"

#include <SDL2/SDL.h>

namespace uge {

    enum keycode {
        UnregisteredKey = -1,
        Esc, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, PrtScr, Insert, Delete,
        Tilde, One, Two, Three, Four, Five, Six, Seven, Eight, Nine, Zero, Minus, Equals,
        Tab, Q, W, E, R, T, Y, U, I, O, P, LBracket, RBracket, Enter,
        CapsLock, A, S, D, F, G, H, J, K, L, Semicolon, Apostrophe, Backslash,
        LShift, Z, X, C, V, B, N, M, Comma, Period, Slash, RShift,
        LCtrl, LAlt, Space, RAlt, RCtrl, LArrow, RArrow, DArrow, UArrow,
        Home, End, PgUp, PgDn
    };

    inline keycode keymap(SDL_Keycode key) {
        switch (key) {
            case SDLK_ESCAPE: return keycode::Esc;
            case SDLK_F1: return keycode::F1;
            case SDLK_F2: return keycode::F2;
            case SDLK_F3: return keycode::F3;
            case SDLK_F4: return keycode::F4;
            case SDLK_F5: return keycode::F5;
            case SDLK_F6: return keycode::F6;
            case SDLK_F7: return keycode::F7;
            case SDLK_F8: return keycode::F8;
            case SDLK_F9: return keycode::F9;
            case SDLK_F10: return keycode::F10;
            case SDLK_F11: return keycode::F11;
            case SDLK_F12: return keycode::F12;
            case SDLK_PRINTSCREEN: return keycode::PrtScr;
            case SDLK_INSERT: return keycode::Insert;
            case SDLK_DELETE: return keycode::Delete;
            case SDLK_BACKQUOTE: return keycode::Tilde;
            case SDLK_1: return keycode::One;
            case SDLK_2: return keycode::Two;
            case SDLK_3: return keycode::Three;
            case SDLK_4: return keycode::Four;
            case SDLK_5: return keycode::Five;
            case SDLK_6: return keycode::Six;
            case SDLK_7: return keycode::Seven;
            case SDLK_8: return keycode::Eight;
            case SDLK_9: return keycode::Nine;
            case SDLK_0: return keycode::Zero;
            case SDLK_MINUS: return keycode::Minus;
            case SDLK_EQUALS: return keycode::Equals;
            case SDLK_TAB: return keycode::Tab;
            case SDLK_q: return keycode::Q;
            case SDLK_w: return keycode::W;
            case SDLK_e: return keycode::E;
            case SDLK_r: return keycode::R;
            case SDLK_t: return keycode::T;
            case SDLK_y: return keycode::Y;
            case SDLK_u: return keycode::U;
            case SDLK_i: return keycode::I;
            case SDLK_o: return keycode::O;
            case SDLK_p: return keycode::P;
            case SDLK_LEFTBRACKET: return keycode::LBracket;
            case SDLK_RIGHTBRACKET: return keycode::RBracket;
            case SDLK_RETURN: return keycode::Enter;
            case SDLK_CAPSLOCK: return keycode::CapsLock;
            case SDLK_a: return keycode::A;
            case SDLK_s: return keycode::S;
            case SDLK_d: return keycode::D;
            case SDLK_f: return keycode::F;
            case SDLK_g: return keycode::G;
            case SDLK_h: return keycode::H;
            case SDLK_j: return keycode::J;
            case SDLK_k: return keycode::K;
            case SDLK_l: return keycode::L;
            case SDLK_SEMICOLON: return keycode::Semicolon;
            case SDLK_QUOTE: return keycode::Apostrophe;
            case SDLK_BACKSLASH: return keycode::Backslash;
            case SDLK_LSHIFT: return keycode::LShift;
            case SDLK_z: return keycode::Z;
            case SDLK_x: return keycode::X;
            case SDLK_c: return keycode::C;
            case SDLK_v: return keycode::V;
            case SDLK_b: return keycode::B;
            case SDLK_n: return keycode::N;
            case SDLK_m: return keycode::M;
            case SDLK_COMMA: return keycode::Comma;
            case SDLK_PERIOD: return keycode::Period;
            case SDLK_SLASH: return keycode::Slash;
            case SDLK_RSHIFT: return keycode::RShift;
            case SDLK_LCTRL: return keycode::LCtrl;
            case SDLK_LALT: return keycode::LAlt;
            case SDLK_SPACE: return keycode::Space;
            case SDLK_RALT: return keycode::RAlt;
            case SDLK_RCTRL: return keycode::RCtrl;
            case SDLK_LEFT: return keycode::LArrow;
            case SDLK_RIGHT: return keycode::RArrow;
            case SDLK_DOWN: return keycode::DArrow;
            case SDLK_UP: return keycode::UArrow;
            case SDLK_HOME: return keycode::Home;
            case SDLK_END: return keycode::End;
            case SDLK_PAGEUP: return keycode::PgUp;
            case SDLK_PAGEDOWN: return keycode::PgDn;
            default: return keycode::UnregisteredKey;
        }
    }

    enum mouse {
        UnregisteredButton = -1,
        Button0, Button1, Button2
    };

    inline mouse mousemap(int button) {
        switch (button) {
            case SDL_BUTTON_LEFT: return mouse::Button0;
            case SDL_BUTTON_MIDDLE: return mouse::Button1;
            case SDL_BUTTON_RIGHT: return mouse::Button2;
            default: return mouse::UnregisteredButton;
        }
    }

    class input {
    public:
        input(
                std::unordered_set<keycode>& keys,
                std::unordered_set<mouse>& mouse_buttons
             );
    public:
        bool is_key_down(keycode key);
        bool is_mouse_down(mouse button);
        vector2 get_mouse_position();
    private:
        std::unordered_set<keycode>& _keys;
        std::unordered_set<mouse>& _mouse_buttons;
    };

}
