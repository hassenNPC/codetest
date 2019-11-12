# this is a simple model example
# check https://datamapper.org/getting-started.html
class ExchangeCoin
	include DataMapper::Resource

	property :id,         Serial    # An auto-increment integer key
	property :fromcoin,   String   # A varchar type string, for short strings
	property :tocoin ,   String
	property :value , Integer 
	property :result, Float
end


# Perform basic sanity checks and initialize all relationships
# Call this when you've defined all your models
DataMapper.finalize

# automatically create the post table
ExchangeCoin.auto_upgrade!