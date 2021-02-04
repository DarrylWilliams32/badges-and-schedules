def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badges = []
    attendees.collect {|attendees| badges << "Hello, my name is #{attendees}."}
    badges
end


def assign_rooms(attendees)
    room_assignments = []
    attendees.each_with_index {|attendee, i| room_assignments <<  "Hello, #{attendee}! You'll be assigned to room #{i+1}!"}
    room_assignments
end

def printer(attendees)
   print_badges = []
   badge = batch_badge_creator(attendees)
   rooms = assign_rooms(attendees)
   attendees.each_with_index {|attendee, i| 
   puts badge[i] 
   puts rooms[i] } 
end