module Components
  class Hero
    attr_reader :name
    attr_reader :life
    attr_reader :satiety

    def initialize(name: "noname")
      @name = name
      @life = 100
      @satiety = 100
    end
  end
end
