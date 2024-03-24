# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

define_modmap({
    Key.RIGHT_ALT: Key.RIGHT_SHIFT
})

define_keymap(
    re.compile("Firefox"),
    {
        K("C-l"): K("C-TAB"),
        K("C-h"): K("C-Shift-TAB"),
        K("C-j"): K("page_down"),
        K("C-k"): K("page_up"),
    },
    "Firefox",
)

define_keymap(
    lambda window : window not in ("Firefox"),
    {
        K("M-h"): K("left"),
        K("M-j"): K("down"),
        K("M-k"): K("up"),
        K("M-l"): K("right"),
        K("M-q"): K("esc"),
        K("M-BACKSPACE"): K("delete"),
    },
    "Navigation & Utility",
)
