#pragma once

#include <iostream>

#ifdef DEBUG
#define DEBUG_LOG(x) std::cout << x << std::endl;
#elif
#define DEBUG_LOG(x)
#endif
