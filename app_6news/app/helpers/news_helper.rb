module NewsHelper

	@@newsDict = Hash.new
	@@newsKeys = Array.new

	def generate_news

		@@newsDict = { "One" => ["Alpha","http://cnn.com"], "Two" => ["Beta","http://bing.com"], "Three" => ["Delta","http://engadget.com"], "Four" => ["Theta","http://yahoo.com"], "Five" => ["Gamma","http://google.com"] }

		# Create our key list from the hash.
		@@newsDict.each do |key, value|
			@@newsKeys.push(key)
		end
	end

	def news_get_title(i)

		if i >= @@newsKeys.count
			return "Nothing"
		end

		@@newsKeys[i]
	end

	def news_get_body(key)

		if @@newsDict.has_key?(key) == false
			return "Nothing"
		end

		@@newsDict[key][0]
	end

	def news_get_link(key)

		if @@newsDict.has_key?(key) == false
			return "Nothing"
		end

		@@newsDict[key][1]
	end

	def news_get_json
		@@newsDict.to_json
	end
end