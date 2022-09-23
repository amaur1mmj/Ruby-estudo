friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

p invited_list

#  isso acima pode se tornar 

p friends.select{|friend| friend!= 'Brian'}


# ou

p friends.reject{|friend| friend == 'Brian'}
