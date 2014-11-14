a = [2,1]
b=[]
c=[]

piles = [a,b,c]

puts "lets play towers of hanoi!"

while c != [2,1]

    puts " Choose a pile to pick from 1,2, or 3"
    
    pick_pile = gets.chomp.to_i-1
    
    puts " choose a pile to move the disk to"
    
    put_pile = gets.chomp.to_i-1
    
    if piles[put_pile].empty?
        piles[put_pile] << piles[pick_pile].pop
    elsif piles[pick_pile].last < piles[put_pile].last 
        piles[put_pile] << piles[pick_pile].pop
    else
        p "not a valid move"
    end
end

p "Congratts! You won!"
