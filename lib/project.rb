class Project
    attr_reader :backers, :title

    def initialize(title)
        @backers = []
        @title = title
    end

    def add_backer(backer)
        #that takes in a Backer instance and adds the backer to its @backers attribute
        @backers << backer
        #Similarly, whenever add_backer() is called to update @backers, the backer should also update its `@backedprojects` list_.
        backer.backed_projects << self
    end

end
