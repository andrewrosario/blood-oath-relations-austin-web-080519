require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

branch_dividian = Cult.new("Branch Dividian", "Waco, TX", 1980, "Its good!")
manson_family = Cult.new("Manson Family", "California", 1960, "Helter Skelter")


john = Follower.new("John", 20, "I'm the best", branch_dividian)
amy = Follower.new("Amy", 19, "I love Charles", manson_family)
mike = Follower.new("Mike", 23, "Its a blast",manson_family)

mike_to_branch = branch_dividian.recruit_follower(mike)

manson_pop = manson_family.cult_population

all_cults = Cult.all

find_cult_name = Cult.find_by_name("Manson Family")

find_by_location = Cult.find_by_location("California")

cult_by_year = Cult.find_by_founding_year(1980)

john_to_manson = john.join_cult(manson_family)

all_followers = Follower.all

follower_ages = Follower.of_a_certain_age(19)

all_oaths = BloodOath.all

manson_followers = manson_family.followers

manson_average = manson_family.average_age

manson_mottos = manson_family.my_followers_mottos



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
