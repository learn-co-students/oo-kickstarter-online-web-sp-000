class Project
    attr_reader :backers, :title

    def initialize(title)
        @backers = []
        @title = title
    end

    def add_backer(backer)
        if (self.backers.include?(backer) == false)
            self.backers << backer
            backer.back_project(self)
        end
    end
end