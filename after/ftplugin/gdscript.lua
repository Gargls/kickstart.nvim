-- Godot 4.x Dark Style for GDScript

local hl = vim.api.nvim_set_hl

-- Keywords (func, var, extends, class_name, etc.)
hl(0, "@keyword.gdscript", { fg = "#c792ea", bold = true })

-- Functions (built-in + user-defined)
hl(0, "@function.gdscript", { fg = "#82aaff" })
hl(0, "@function.call.gdscript", { fg = "#82aaff" })

-- Variables
hl(0, "@variable.gdscript", { fg = "#b0bec5" })
hl(0, "@variable.builtin.gdscript", { fg = "#ffcb6b" }) -- e.g. self, delta

-- Constants (PI, TAU, enums)
hl(0, "@constant.gdscript", { fg = "#f78c6c" })
hl(0, "@constant.builtin.gdscript", { fg = "#f78c6c" })

-- Types (Node2D, Vector2, etc.)
hl(0, "@type.gdscript", { fg = "#82aaff" })

-- Signals
hl(0, "@attribute.gdscript", { fg = "#ffcb6b", bold = true })

-- Strings
hl(0, "@string.gdscript", { fg = "#c3e88d" })

-- Numbers
hl(0, "@number.gdscript", { fg = "#f78c6c" })

-- Comments
hl(0, "@comment.gdscript", { fg = "#546e7a", italic = true })

-- Operators (+, -, =, etc.)
hl(0, "@operator.gdscript", { fg = "#89ddff" })

-- Punctuation
hl(0, "@punctuation.delimiter.gdscript", { fg = "#89ddff" })
hl(0, "@punctuation.bracket.gdscript", { fg = "#89ddff" })
