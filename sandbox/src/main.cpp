#include "uge.h"

class app : public uge::window {
public:
    app() : uge::window("app", { 800, 600 }) {}
protected:
};

int main()
{
    app app;
    app.start();
}
