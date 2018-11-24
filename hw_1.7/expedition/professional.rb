class Professional
  @@profies = []

  def self.

  attr_accessor :boss
  attr_reader :name, :competences

  def initialize(name)
    @name = name
    @boss = false
    @competences = []
  end

  def learn(compy)
    if compy.is_a?(Profcomp.class)
      @competences << compy
    else
      puts 'Not Profcomp class'
    end
  end

  def to_s
    puts "Визитка #{self.name}"
    puts competences.inspect
  end

  def <=>(prof)
    if self.competences.size > prof2.competences.size
      puts "#{prof1.name}"
    elsif prof1.competences.size < prof2.competences.size
      puts "#{prof2.name}"
    else
      puts 'same'
    end
  end
end