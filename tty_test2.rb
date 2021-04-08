require "tty-prompt"

prompt = TTY::Prompt.new

prompt.ask("Provide number in range: 0-9?") { |q| q.in("0-9") }