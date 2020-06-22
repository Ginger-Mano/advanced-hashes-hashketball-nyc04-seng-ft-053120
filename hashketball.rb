require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end
#binding.pry
def num_points_scored(player_name)
  game_hash.each do |key, value|
    value[:players].each do |play_ele|
      if play_ele[:player_name] == player_name
      return play_ele[:points]
    #binding.pry
      end
    end
  end
  #takes players name and returns the points scored for that player
  # Write code here
end

def shoe_size(player_name)
  game_hash.each do |key, value|
    value[:players].each do |play_ele|
      if play_ele[:player_name] == player_name
      return play_ele[:shoe]
      end
    end
  end
  #takes players name and returns the shoe size for that player
end

def team_colors(team_name)
  game_hash.each do |key, value|
    if value[:team_name] == team_name
      return value[:colors] 
    end
    #binding.pry
  end
  #takes team name and returns an array of the teams colors
end

def team_names
  results_ary = []
    game_hash.each do |key, value|
      if game_hash[key][:team_name]
       results_ary << game_hash[key][:team_name]
       end
     end
     #binding.pry
     results_ary
end  #uses game_hash to return an array of the team namea

def player_numbers(team_name)
  jersey_num = []
  game_hash.each do |key, value|
    value[:players].each do |player|
      if game_hash[key][:team_name] == team_name
        jersey_num << player[:number]
      end
    end
  end
#  binding.pry
  jersey_num
end



def player_stats(player_name)
  game_hash.each do |key, value|
    value[:players].each do |play_ele| #second block parameter has to be named something else
      if play_ele[:player_name] == player_name
        return play_ele
  #  binding.pry
    #if player_name == value
      #return game_hash[:home][:players][0]
        end
      end
    end
  #returns a hash of that players stats
end

def big_shoe_rebounds
  rebounds = 0
  shoe_size = 0
  game_hash.each do |key, value|
    binding.pry
    value[:players].each do |player|
      if player[:shoe] > shoe_size
        shoe_size = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  #binding.pry
  rebounds
end
