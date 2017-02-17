require './models/team.rb'
require './commands/team_command.rb'

team1 = Team.new 
team1.name = 'Staines Raiders'

team2 = Team.new
team2.name = 'Windsor Jumpers'

puts "#{team1.name} vs #{team2.name}"

puts "#{team1.name} score #{team1.calculate}%"
puts "#{team2.name} score #{team2.calculate}%"

result = TeamCommand.fight! team1, team2

puts "Who won? It's #{result[:winner]} with a score of #{result[:score]}%"
