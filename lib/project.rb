class Project
    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        #Project initializes with a title
        @backers = []
        #And an empty array because it has no backers yet.
    end 

    def add_backer(backer)
        @backers << backer
        #Add backer adds a Backer class instance to the array of backers
        backer.backed_projects << self
        #And puts itself (the Project instance) into the array of the backed projects of the backer.
    end 
end 