class Profcomp
  @@compies = []

  def self.compies
    @@compies
  end

  attr_reader :title

  def initialize(title)
    @title = title
    @@compies << self
  end

end