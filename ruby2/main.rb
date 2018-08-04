require File.expand_path('../gear.rb', __FILE__)

@wheel = Wheel.new(24, 1.25)
puts Gear.new(52, 11, @wheel).gear_inches