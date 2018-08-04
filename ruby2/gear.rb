require File.expand_path('../wheel.rb', __FILE__)
class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end  

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
      ratio * wheel.diameter
  end 
end
