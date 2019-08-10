require_relative 'follower'

class Cult

    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, year, slogan)
        @name = name
        @location = location
        @founding_year = year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        ## if exists logic?
        new_follower = follower.join_cult(self)
    end

    def cult_population
        my_followers = Follower.all.select{|follower| follower.cults.include?(self)}
        my_followers.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.select{|cult| cult.founding_year == year}
    end

    def followers
        my_followers = Follower.all.select{|follower| follower.cults.include?(self)}
    end

    def average_age
        ages = self.followers.collect{|follower| follower.age}
        ages.sum.to_f/ages.length
    end

    def my_followers_mottos
        self.followers.collect{|follower| follower.motto}
    end

    def self.least_popular
        sorted = Cult.all.sort_by{|cult| cult.cult_population}
        sorted[0]
    end

    
end