require "byebug"
require "time"

def measure (reps = 1, &block)
  times = []
  start_time = Time.now

  reps.times do
    start_time = Time.now
    block.call
    times << Time.now - start_time
  end

  times.reduce(&:+) / reps
end
