def begins_with_r (array)
	truth = true
	array.each do |word|
		if word[0,1] != "r"
			truth = false
		end
	end
	truth
end

def contain_a (array)
	new_array = []
	array.each do |word|
		if word.include?("a")
			new_array.push (word)
		end
	end
	new_array
end

def first_wa (array)
	new_array = []
	array.find do |word|
		 word[0,2] == ("wa")
		end
end

def remove_non_strings (array)
	array.delete_if do |word|
		!(word.kind_of?(String))
	end
end

def count_elements (array)
	counts = Hash.new 0
	array.each do |name|
		name.each do |key, value|
		counts[value]+=1
		end
	end
	result = []
	counts.each do |k, v|
		result << {name: k, count: v}
	end
	result
end

def merge_data (arr1, arr2)
	merged =[]
	arr1.each_index do |i|
		arr2[0].keys.each do |name|
			merged << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
		end
	end
	merged
end

def find_cool (hash1)
	#hash1.select {|temp| temp["temperature"] == "cool" }
	selected_hash= []
	selected_hash << hash1.find {|x| x[:temperature] == "cool"}
	selected_hash
end

def organize_schools (school_hash)
	result = {}

	school_hash.each do |school, location|
		location.each do |k,v|
			if result[v] == nil
				result[v] = [school]
			else
				result[v]<< school
			end
		end
	end
	result
end



