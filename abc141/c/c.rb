player_num,first_point,q = gets.chomp.split.map(&:to_i)
a = []
q.times{ a << gets.to_i }

players_points = Array.new(player_num, first_point)

def p_winner arr
  arr.each do |point|
    puts point.positive? ? "Yes" : "No"
  end
end

def move_round players_points, a
  a.each do |ansered_player|
    players_points.map!.with_index(1) do |point, i|
      next i == ansered_player ? point : point - 1
    end
  end
  return players_points
end

p_winner move_round(players_points, a)
