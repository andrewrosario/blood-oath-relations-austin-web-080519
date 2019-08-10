require_relative 'bloodoath'
require 'pry'
class Follower
    attr_accessor :name, :age, :motto, :cults

    @@all = []

    def initialize(name, age, motto, cult)
        @name = name
        @age = age
        @motto = motto
        @cults = []
        @cults << cult
        @@all << self
    end

    def join_cult(cult)
        self.cults << cult
        new_oath = BloodOath.new(self, cult, "2019-08-09")
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select{|follower| follower.age == age}
    end



end