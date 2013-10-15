require './tower.rb'

prvni = Tower.new([3,2,1], "prvni")
druha = Tower.new([],"druha")
treti = Tower.new([], "treti")

towers = [prvni,druha,treti]
rotated_towers = towers.rotate

while treti.pole != [3,2,1]
	towers.each do |t|
	
	source_tower = t
	destination_tower = rotated_towers.first


	if destination_tower == source_tower
		rotated_towers.rotate!
		destination_tower = rotated_towers.first
	end


	while source_tower.can_send?(destination_tower)
		source_tower.send_circle(destination_tower)

		if source_tower.pole.empty?
			break
		end

		if source_tower.can_send?(destination_tower)
		else
			rotated_towers.rotate!
			destination_tower = rotated_towers.first

			if destination_tower == t
				rotated_towers.rotate!
				destination_tower = rotated_towers.first
			end
		end
	end

end
	
end

prvni.status
druha.status
treti.status


#
# class Towers
# choose sender
# choose receiver
# send circle
#

#
# take first tower
# rotate once
# if towers are the same 
# 		rotate
# if not send
# 	if send was not ok 
# 	rotate & send
# 	
# if I get circle 3 from 2, I could send it back to 2

 # while treti.status != [3,2,1]
	# towers.each do |t| 
	# 	print "Zacatek cyklu - #{t.name}\n"
	# 	rotated_towers = towers.rotate
	# 	destination = rotated_towers.first

	# 	if destination == t
	# 		destination = rotated_towers.rotate!.first
	# 	end

	# 	print "Zacatek cyklu destination - #{destination.name}\n"
	# 	print "Zacatek cyklu t - #{t.name}\n"

	# 	while t.can_send?(destination)
	# 		while t.can_send?(destination)
	# 			t.send_circle(destination)
	# 			 # rotated_towers.rotate!
	# 			# destination = rotated_towers.first	
	# 			print "in while\n"
	# 			print "t - #{t.status}\n"
	# 			print "destination - #{destination.status}"
	# 		end	
	
	# 		print "Rotating...\n\n\n"
	# 		rotated_towers.rotate!
	# 		destination = rotated_towers.first
	# 		# 

	# 	end
	# end
	# towers.rotate!
 # end
