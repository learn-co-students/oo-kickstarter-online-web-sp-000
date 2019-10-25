class Project

    @backer = []
    attr_reader :backer

  def initialize(backer)
    @backer = backer
  end
  def backer
    @backer
  end

  def add_backer(projects)
    @backer << projects

end
