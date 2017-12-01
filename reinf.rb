seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

empty_seats = {}

user_choice = nil
sitter = nil

seats.each_with_index do |sub_array, row_index|
  sub_array.each_with_index do |seat, seat_index|
    if seat == nil
      empty_seats[:row_index] = seat_index
      print "Row #{row_index.to_i + 1} seat #{seat_index.to_i + 1} is free. "
      print "Do you want to sit there? (y/n)"
      user_choice = gets.chomp
      if user_choice == 'y'
        puts "What'sur narm duuude?"
        sitter = gets.chomp
        seats[row_index][seat_index] = sitter
      end
      break if user_choice == 'y'
    end
    break if user_choice == 'y'
  end
end


seats.each do |row|
  print row
  puts ' '
end
