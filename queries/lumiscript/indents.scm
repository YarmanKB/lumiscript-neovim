(block
  "{" @indent.begin
  (#set! indent.immediate 1))

(block
  "}" @indent.end)

(block) @indent.branch
