require 'pry'
class Project
attr_reader :backers, :title


 def initialize(title)
   @backers = []
   @title = title
 end

 def add_backer(backer)
   @backers << backer
   #binding.pry
   if !backer.backed_projects.include?(self)
     backer.back_project(self)
   end
 end


end
