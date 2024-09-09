#include "uge.h"

#include <array>
#include <functional>

#include <SDL2/SDL.h>

constexpr uge::vector2 window_size = { 800, 600 };
constexpr uge::vector2 pixel_count = { 20, 15 };
constexpr uge::vector2 pixel_size = {
    window_size.x / pixel_count.x,
    window_size.y / pixel_count.y
};

enum cell_state {
    empty = 0,
    sand,
};

struct cell {
    cell_state state = empty;

    std::array<cell, 8> update(std::array<cell, 8> neighbors) {
        neighbors[6].state = state;
        state = empty;
        return neighbors;
    }

    uge::color color() {
        switch (state) {
            case empty: return { 0, 0, 0, 255 };
            case sand: return { 255, 255, 255, 255 };
            default: return { 0, 0, 0, 0 };
        };
    }
};

struct cell_grid {
    std::array<cell, pixel_count.x * pixel_count.y> cells;

    void foreach(std::function<void(uge::vector2, cell&)> callback) {
        for (int i = 0; i < cells.size(); i++)
            if (cells[i].state != empty)
                callback({ i % pixel_count.x, i / pixel_count.x }, cells[i]);
    }
};

class app : public uge::window {
public:
    app() : uge::window("app", window_size) {}

    cell_grid grid;
protected:
    void on_ready() override {
        _fps_limit = 30;

        grid.cells[4].state = sand;
    }

    void on_draw() override {
        grid.foreach([&](uge::vector2 pos, cell& cell) {
            auto neighbors = cell.update({
                    grid.cells[(pos.y - 1) * pixel_count.x + pos.x - 1],
                    grid.cells[(pos.y - 1) * pixel_count.x + pos.x],
                    grid.cells[(pos.y - 1) * pixel_count.x + pos.x + 1],

                    grid.cells[pos.y * pixel_count.x + pos.x - 1],
                    grid.cells[pos.y * pixel_count.x + pos.x + 1],

                    grid.cells[(pos.y + 1) * pixel_count.x + pos.x - 1],
                    grid.cells[(pos.y + 1) * pixel_count.x + pos.x],
                    grid.cells[(pos.y + 1) * pixel_count.x + pos.x + 1],
            });

            grid.cells[(pos.y - 1) * pixel_count.x + pos.x - 1] = neighbors[0];
            grid.cells[(pos.y - 1) * pixel_count.x + pos.x] = neighbors[1];
            grid.cells[(pos.y - 1) * pixel_count.x + pos.x + 1] = neighbors[2];

            grid.cells[pos.y * pixel_count.x + pos.x - 1] = neighbors[3];
            grid.cells[pos.y * pixel_count.x + pos.x + 1] = neighbors[4];

            grid.cells[(pos.y + 1) * pixel_count.x + pos.x - 1] = neighbors[5];
            grid.cells[(pos.y + 1) * pixel_count.x + pos.x] = neighbors[6];
            grid.cells[(pos.y + 1) * pixel_count.x + pos.x + 1] = neighbors[7];

            draw_rect(pos, pixel_size, cell.color());
        });
    }

    void on_update() override {
        if (_input.is_mouse_down(uge::mouse::Button0)) {
            uge::vector2 pos = _input.get_mouse_position() / pixel_size;
            grid.cells[pos.y * pixel_count.x + pos.x].state = sand;
        }
    }

    void on_event(SDL_Event& event) override {
        if (event.key.keysym.sym == SDLK_ESCAPE) stop();
    }
};

int main()
{
    app app;
    app.start();
}
