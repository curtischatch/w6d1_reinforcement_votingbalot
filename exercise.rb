ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]




#Tally up the votes and determine the winner


container = []
ballots.each do |ballot|
  ballot.values.each do |name|
    container << name
  end
end

container_sum = {}
container.uniq!.each do |con|
  container_sum[con] = 0
end
#
# p container
# p container_sum

ballots.each do |ballots|
  ballots.each do |key, value|
    if key == 1
      container_sum[value] += 3
    elsif key == 2
      container_sum[value] += 2
    elsif key == 3
      container_sum[value] += 1
    end
  end
end

p container_sum
