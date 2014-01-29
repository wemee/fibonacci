module Fibonacci
	private
	def fibonacci n
		return n if n<0
		return @num_cache[n]  if(!@num_cache[n].nil?)
		@num_cache[n] = fibonacci(n-1) + fibonacci(n-2)
	end

	public
	def find_at n
		@num_cache ||= [0, 0, 1]
		return n if n<0
		return @num_cache[n]  if(!@num_cache[n].nil?)
		@num_cache[n] = fibonacci(n-1) + fibonacci(n-2)
	end

	def ary_to n
		@num_cache ||= [0, 0, 1]
		find_at(n) if @num_cache.length-1 < n
		return @num_cache[1..n]
	end

	module_function :fibonacci, :find_at, :ary_to
end