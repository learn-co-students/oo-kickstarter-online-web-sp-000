class Project

    attr_accessor :title

    attr_reader :backer

    def initialize(title)
        @title = title
        @backers = []
    end


    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end

    def backer(backer)
        @backers << backer
    end


    def backers
        @backers

    end

end