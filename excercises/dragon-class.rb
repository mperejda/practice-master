class Dragon

  def initialize (name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @intestine_contents = 0

    puts "#{@name} is born!"
  end

  def feed
    puts "you feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "you walk #{@name}."
    @intestine_contents = 0
    passage_of_time
  end

  def put_to_bed
    puts "you put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleeep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end
  
  def rock
    puts "you rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off...."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @intestine_contents >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly-=1
      @intestine_contents +=1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is  starving! In desperation, he ate your shoes!"
      exit
    end

    if hungry?
      if @asleep
        @asleep = false
        puts " He suddenly wakes up!"
      end
      puts "#{@name}'s stomach grumbles"
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suffenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end

end
