# MRI 1.9.2+ || MRI 2.0.0+
if defined?(PryDebugger) || defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# Show exception backtraces
Pry.config.exception_handler = proc do |output, exception, _pry_|
  output.puts exception
  output.puts exception.backtrace.first(10)
end
