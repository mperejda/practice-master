 def measure(n=1)
   start_time = Time.now
   n.times do
     yield
   end
   run_time = Time.now - start_time
   run_time/n
 end
