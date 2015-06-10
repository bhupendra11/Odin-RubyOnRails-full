require 'rest-client'

print "Search :  "

query = gets.chomp

query_mod = query.strip.split(" ").join("+")

final_query = "http://www.google.co.in/#q="

response =RestClient.get final_query

puts "-------------------------------"

puts "Response code: #{response.code} "
puts "-------------------------------"
puts "Response headers: #{response.headers} "
puts "-------------------------------"
puts "Response cookies: #{response.cookies} "
puts "-------------------------------"
puts "Response : #{response.to_str} "