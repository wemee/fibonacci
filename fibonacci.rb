module Fibonacci
	private
	def recursive_finding! n
		return n if n<0
		return @num_cache[n]  if(!@num_cache[n].nil?)
		@num_cache[n] = recursive_finding!(n-1) + recursive_finding!(n-2)
	end

	public
	def find_at n
		@num_cache ||= [0, 0, 1]
		return n if n<0
		return @num_cache[n]  if(!@num_cache[n].nil?)
		@num_cache[n] = recursive_finding!(n-1) + recursive_finding!(n-2)
	end

	def ary_to n
		@num_cache ||= [0, 0, 1]
		find_at(n) if @num_cache.length-1 < n
		return @num_cache[1..n]
	end

	module_function :recursive_finding!, :find_at, :ary_to
end