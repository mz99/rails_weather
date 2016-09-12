require "open-uri"
require "digest/md5"
require "json"

def marvel_call(endpoint)
  pri = '2b6ec2861dd7c3826d73ac3a7500dd33c07fceea'
  pub = 'bdb933b22cad7396006baf4062907dee'
  ts = Time.now.to_i
  base_url = 'http://gateway.marvel.com'
  hash = Digest::MD5.hexdigest("#{ts}#{pri}#{pub}")
  marvel_data = open("#{base_url}/#{endpoint}?ts=#{ts}&apikey=#{pub}&hash=#{hash}").read
  JSON.parse(marvel_data)
end

puts JSON.pretty_generate(marvel_call("v1/public/comics"))
