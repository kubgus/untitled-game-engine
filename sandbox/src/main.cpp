#include "uge.h"

#include <array>

#include <SDL2/SDL.h>

constexpr uge::vector2 window_size = { 800, 600 };
constexpr uge::vector2 pixel_fraction = { 80, 60 };
constexpr uge::vector2 pixel_size = {
    window_size.x / pixel_fraction.x,
    window_size.y / pixel_fraction.y
};

constexpr uge::color color_sand = { 255, 255, 0 };

enum pixel_type {
    EMPTY = -1,
    WALL, SOIL, LIQUID
};

struct pixel {
    pixel_type type = EMPTY;
    uge::color color;
};

class app : public uge::window {
public:
    app() : uge::window("app", window_size) {}

    std::array<pixel, pixel_fraction.x * pixel_fraction.y> pixels;
protected:
    void on_ready() override {
        _fps_limit = 20;
    }

    void on_draw() override {
        for (int y = 0; y < pixel_fraction.y; y++) {
            for (int x = 0; x < pixel_fraction.x; x++) {
                const pixel& pixel = pixels[pixel_index({ (uint32_t)x, (uint32_t)y })];
                if (pixel.type != EMPTY) {
                    draw_rect(
                        uge::vector2 { (uint32_t)x, (uint32_t)y } * pixel_size,
                        pixel_size,
                        pixel.color
                    );
                }
            }
        }
    }

    void on_update() override {
        std::array<pixel, pixel_fraction.x * pixel_fraction.y> new_pixels;
        for (int y = 0; y < pixel_fraction.y; y++) {
            for (int x = 0; x < pixel_fraction.x; x++) {
                pixel this_pixel = pixels[pixel_index({ (uint32_t)x, (uint32_t)y })];
                if (this_pixel.type == EMPTY) {
                    continue;
                }
                if (this_pixel.type == SOIL) {
                    if (y < pixel_fraction.y - 1) {
                        if (pixels[pixel_index({ (uint32_t)x, (uint32_t)y + 1 })].type == EMPTY) {
                            new_pixels[pixel_index({ (uint32_t)x, (uint32_t)y + 1 })] = this_pixel;
                            continue;
                        } else if (pixels[pixel_index({ (uint32_t)x + 1, (uint)y + 1 })].type == EMPTY) {
                            new_pixels[pixel_index({ (uint32_t)x + 1, (uint32_t)y + 1 })] = this_pixel;
                            continue;
                        } else if (pixels[pixel_index({ (uint32_t)x - 1, (uint32_t)y + 1 })].type == EMPTY) {
                            new_pixels[pixel_index({ (uint32_t)x - 1, (uint32_t)y + 1 })] = this_pixel;
                            continue;
                        }
                    }
                }
                new_pixels[pixel_index({ (uint32_t)x, (uint32_t)y })] = this_pixel;
            }
        }
        pixels = new_pixels;
    }

    void on_event(SDL_Event& event) override {
        if (event.key.keysym.sym == SDLK_ESCAPE) {
            stop();
        }

        if (event.button.type == SDL_MOUSEBUTTONDOWN) {
            if (event.button.button == SDL_BUTTON_LEFT) {
                pixels[pixel_index({
                        (uint32_t)event.button.x / pixel_size.x,
                        (uint32_t)event.button.y / pixel_size.y
                })] = { SOIL, color_sand };
            }
        }
    }
private:
    inline uint32_t pixel_index(uge::vector2 pos) {
        return pos.y * pixel_fraction.x + pos.x;
    }
};

int main()
{
    app app;
    app.start();
}
