(let_statement
  name: (identifier) @local.definition)

(var_declaration
  name: (identifier) @local.definition)

(for_statement
  name: (identifier) @local.definition)

((identifier) @local.reference
  (#not-any-of? @local.reference
    "abs"
    "sin"
    "cos"
    "sqrt"
    "ceil"
    "floor"
    "round"
    "clamp"
    "dist"
    "lerp"
    "min"
    "max"
    "pow"
    "rand"
    "rgb"
    "hsv"
    "x"
    "y"
    "dt"
    "delta_ms"
    "speed"
    "pressed"
    "press"
    "pressed_percentage"))
