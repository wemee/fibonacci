module Fibonacci
	private
	def self.fibonacci n
		return n if n<0
		return @fibonacci_ary[n]  if(!@fibonacci_ary[n].nil?)
		@fibonacci_ary[n] = self.fibonacci(n-1) + self.fibonacci(n-2)
	end

	public
	def self.find_at n
		@fibonacci_ary ||= [0, 0, 1]
		return n if n<0
		return @fibonacci_ary[n]  if(!@fibonacci_ary[n].nil?)
		@fibonacci_ary[n] = self.fibonacci(n-1) + self.fibonacci(n-2)
	end

	def self.ary_to n
		@fibonacci_ary ||= [0, 0, 1]
		self.find_at(n) if @fibonacci_ary.length-1 < n
		return @fibonacci_ary[1..n]
	end
end