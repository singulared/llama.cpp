#pragma once

// hip.h defines __trap() as a macro; recent hipCUB declares __trap as a function.
// Suspend the macro across the include so the declaration is not expanded.

#pragma push_macro("__trap")
#undef __trap
#include <hipcub/hipcub.hpp>
#pragma pop_macro("__trap")

namespace cub = hipcub;
