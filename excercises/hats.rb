hats =[]

10.times do
    hats << true
end

new_hats = hats
n=1

while n<=10
    new_hats = hats.each_with_index.map { |hat, i|
        if i%n == 0
            hat = !hat
        else
            hat
        end
    }
    n+=1
end

p new_hats
    
