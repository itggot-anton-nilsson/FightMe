require 'gosu'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

wd = Window.new
wd.show