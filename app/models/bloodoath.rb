class BloodOath
    attr_accessor :follower, :cult, :date
    
    @@all = []

    def initialize(follower, cult, date)
        @follower = follower
        @cult = cult
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end


end