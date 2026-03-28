[
  "type"
  "global"
  "key"
  "var"
  "let"
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
] @operator

[
  "{"
  "}"
  "("
  ")"
] @punctuation.bracket

"," @punctuation.delimiter

(comment) @comment
(number) @number

(identifier) @variable

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
  name: (identifier) @variable)

(call_expression
  function: (identifier) @function.call)

(color_statement
  "color" @keyword.return)
