require 'optparse'
require './models/team.rb'
require './commands/team_command.rb'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: app.rb [options]"

  opts.on("--team1 name") do |team|
    options[:team_1] = team
  end

  opts.on("--team2 name") do |team|
    options[:team_2] = team
  end
end.parse!

team_1 = Team.new
team_1.name = options[:team_1]

team_2 = Team.new
team_2.name = options[:team_2]

result = TeamCommand.fight! team_1, team_2

if result.draw?
  puts "It's a draw! With a score of #{result.winner.score}"
else
  puts "Who won? It's #{result.winner.name} with a score of #{result.winner.score}%"
end
