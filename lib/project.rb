class Project
  attr_reader :title
  @@backers = []

  def initialize(title)
    @title = title
  end

  def backers
    @@backers
  end

  def add_backer(name)
    if @@backers.find { |i| i.name == name.name }
    else
      @@backers << name
      name.back_project(self)
    end

  end

end
