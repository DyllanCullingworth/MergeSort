def fibs(n)
  sequence = []

  (1..n).each do |i| 
    if (1..2).include? i
      sequence << 1
    else
      sequence << (sequence[-1] + sequence[-2])
    end
  end

  sequence
end


def fibs_rec(n, fib = [])  
  return fib = [1,1] if n <= 2

  fib = fibs_rec(n-1)
  fib << fib[-1] + fib[-2]
end

p fibs_rec(6)

# fib(6) = [1,1,2,3,5,8]
#     fib(5) = [1,1,2,3,5]
#         fib(4) = [1,1,2,3]
#             fib(3) = [1,1,2]
#                 fib(2) = [1,1]