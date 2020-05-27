require 'pry'
#awesome_project = Project.new("This is an Aweseome Project")
class Project 
    attr_reader :backers, :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        #binding.pry
        @backers << backer
        backer.backed_projects << self
    end
end