require 'gosu'
Dir.glob("lib/*.rb") {|file| require_relative file}

wd = Window.new
wd.show
