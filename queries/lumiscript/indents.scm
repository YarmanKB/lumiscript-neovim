((block) @indent.begin
  (#set! indent.immediate 1))

(block
  "}" @indent.end @indent.branch)
