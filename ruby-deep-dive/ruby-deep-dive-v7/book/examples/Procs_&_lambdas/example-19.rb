
def to_proc(sym)
  Proc.new { |x| x.send(sym) }
end

to_proc(:size).call("test")
