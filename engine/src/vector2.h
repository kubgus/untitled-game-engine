#pragma once

#include <cstdint>

namespace uge {

    struct vector2
    {
        uint32_t x, y;
    };

    inline vector2 operator+(const vector2& a, uint32_t b) { return { a.x + b, a.y + b }; }
    inline vector2 operator-(const vector2& a, uint32_t b) { return { a.x - b, a.y - b }; }
    inline vector2 operator*(const vector2& a, uint32_t b) { return { a.x * b, a.y * b }; }
    inline vector2 operator/(const vector2& a, uint32_t b) { return { a.x / b, a.y / b }; }

    inline vector2 operator+(const vector2& a, const vector2& b) { return { a.x + b.x, a.y + b.y }; }
    inline vector2 operator-(const vector2& a, const vector2& b) { return { a.x - b.x, a.y - b.y }; }
    inline vector2 operator*(const vector2& a, const vector2& b) { return { a.x * b.x, a.y * b.y }; }
    inline vector2 operator/(const vector2& a, const vector2& b) { return { a.x / b.x, a.y / b.y }; }

}
