# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

define_modmap({
    Key.RIGHT_ALT: Key.RIGHT_SHIFT
})

define_keymap(
    re.compile("Firefox"),
    {
        K("C-l"):       K("C-TAB"),
        K("C-h"):       K("C-Shift-TAB"),
        K("C-j"):       K("PAGE_DOWN"),
        K("C-Shift-j"): K("DOWN"),
        K("C-k"):       K("PAGE_UP"),
        K("C-Shift-k"): K("UP"),
    },
    "Firefox",
)

define_keymap(
    lambda window : window != "Firefox",
    {
        K("M-h"):         K("LEFT"),
        K("M-j"):         K("DOWN"),
        K("M-k"):         K("UP"),
        K("M-l"):         K("RIGHT"),
        K("M-q"):         K("ESC"),
        K("M-BACKSPACE"): K("DELETE"),
    },
    "Navigation & Utility",
)
