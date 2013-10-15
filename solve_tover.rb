require './tower.rb'

prvni = Tower.new([3,2,1], "prvni")
druha = Tower.new([],"druha")
treti = Tower.new([], "treti")

towers = [prvni,druha,treti]

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
	towers.each do |t| 
		rotated_towers = towers.rotate
		destination = rotated_towers.first

		while t.can_send?(destination)
			while t.can_send?(destination)
				t.send_circle(destination)
				 # rotated_towers.rotate!
				# destination = rotated_towers.first	
				print "in while\n"
				print "t - #{t.status}\n"
				print "destination - #{destination.status}"
			end	
	
			print "Rotating...\n"
			rotated_towers.rotate!
			destination = rotated_towers.first
			if rotated_towers.first == t
				rotated_towers.rotate!
			end

		end
	end
	
# end




	prvni.status
	druha.status
	treti.status
