[
  "type"
  "global"
  "key"
  "var"
  "let"
  "for"
  "in"
  "init"
  "update"
  "render"
  "color"
  "if"
  "else"
  "static"
  "animation"
] @keyword

[
  "="
  "!"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "+"
  "-"
  "*"
  "/"
  "%"
  "&&"
  "||"
  ".."
] @operator

[
  "{"
  "}"
  "("
  ")"
  "["
  "]"
] @punctuation.bracket

"," @punctuation.delimiter

(comment) @comment
(number) @number

(identifier) @variable

((
  identifier
) @constant.builtin
  (#any-of? @constant.builtin
    "x"
    "y"
    "dt"
    "delta_ms"
    "speed"
    "pressed"
    "press"
    "pressed_percentage")
  (#set! priority 105))

(type_declaration
  value: [
    "static"
    "animation"
  ] @type.builtin)

(var_declaration
  name: (identifier) @variable.member)

(let_statement
  name: (identifier) @variable)

(assignment_statement
  target: (identifier) @variable)

(for_statement
  name: (identifier) @variable.parameter)

(index_expression
  array: (identifier) @variable.member)

(call_expression
  function: (identifier) @function.call)

(call_expression
  function: (identifier) @function.builtin
  (#any-of? @function.builtin
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
    "hsv")
  (#set! priority 105))

(color_statement
  "color" @keyword.return)
