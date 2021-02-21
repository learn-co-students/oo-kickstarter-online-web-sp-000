require 'pry'

class Backer
  attr_accessor :backed_projects, :name 
  
  def initialize(name)
    @backed_projects = []
    @name = name 
  end 
  
  def back_project(name) 
    @backed_projects << name
    binding.pry 
    Project.add_backer(backer)
  end
end 
# describe 'Backer - More Advanced #back_project' do
#   it 'also adds the backer to the project\'s backers array' do
#     logan = Backer.new("Logan")
#     hoverboard = Project.new("Awesome Hoverboard")
#     logan.back_project(hoverboard)

#     # If by this point, the project knows about a new backer, where does that mean
#     # some more magic needs to happen? There's really only one place it can happen.
#     expect(hoverboard.backers).to include(logan)

# what they want back_project to do is add the backer's name (perhaps the entire backer object) to an array called backers which would be associated with any given project
# you can sorta see how they're calling the method with the expect
# expect(hoverboard.backers).to include(logan)
# like hoverboard would be a project
# so they want me to call a method from the project class while in the Backer class method
# and they want you to call/access backers on the hoverboard instance

# and it'll return an array that includes the name logan
# but they want your code for back_project on the Backer class to do exactly that (what you said) ... they want you to call a method from the project class from the backer class
# From a distant point of view.... they want the objects to talk to each other
# that I understand. is this in lieue of creating a third file like we did in MP3 for Song and Artist? 
