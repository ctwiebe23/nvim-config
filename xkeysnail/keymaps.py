# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

define_modmap({
    Key.RIGHT_ALT: Key.RIGHT_SHIFT
})

define_keymap(re.compile("Firefox"), {
    K("C-M-l"): K("C-TAB"),
    K("C-M-h"): K("C-Shift-TAB"),
    K("C-M-j"): K("down"),
    K("C-M-k"): K("up")
}, "Firefox")
