class Project
  
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def add_backer(a_person)
    @backers << a_person
    a_person.backed_projects << self
  end
  
end