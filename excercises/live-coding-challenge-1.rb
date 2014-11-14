# Instructions

# Hello! Welcome to the coding challenge. Over the next 20 minutes, please read
# the following and implement your solution to the question below. You can use
# any programming language you like. It doesn't have to be Ruby, but Ruby is
# certainly my favorite! 

# Please don't consult with any outside sources during this test, including 
# asking others for help, stack overflow, google, etc.

# Also, please do not attempt to run your code to see how it will work. This 
# includes REPLs like irb and pry. If there is anything you are not sure about, 
# just go ahead and ask me. You won't be penalized for that!

# I am mainly concerned with whether you can come up with a solution to the
# problem; I am less concerned about the syntax being absolutely perfect.

# If you have any questions about anything, ask me for help; that's why I am
# here. :)


# ## Cats in Hats
# You have 100 cats (You are quite lucky to own so many cats!).

# You have arranged all your cats in a line. Initially, none of your cats have
# any hats. You take 100 rounds walking around the cats. Every time you stop at a
# cat, you put a hat on it if it doesn't have one, and you take its hat off if it
# has one on.

# The first round, you stop at every cat. The second round, you only stop at
# every 2nd cat (#2, #4, #6, #8, etc.). The third round, you only stop at every
# 3rd cat (#3, #6, #9, #12, etc.). You continue this process until the 100th
# round (i.e. you only visit the 100th cat).

# Write a program that prints which cats have hats at the end.

# ###### your code below this line

cats =[]

100.times do
    cats<< false
end

i=1

while i < 101
    cats = cats.each_index.map { |cat, idx|
        if idx+1%i == 0
            cat = !cat
        else
            cat
        end
        }
        i+=1
end

cats.each_with_index { |cat, idx|
    if cat == true
        puts idx
    end
    }
        
            
        
