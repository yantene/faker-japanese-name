# Faker::JapaneseName

A Faker gem that provides Japanese family names and gender-specific given names, along with their kana (reading).

## Features
- Random generation of Japanese family and given names (male/female)
- All names include kana (reading) information
- Data sourced from Wikidata (CC0-1.0 license)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faker-japanese-name'
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install faker-japanese-name
```

## Usage

First, require the gem:

```ruby
require 'faker-japanese-name'
```

### Generate a Full Name

```ruby
name = Faker::JapaneseName.name
puts name[:name]  #=> "佐藤 太郎"
puts name[:kana]  #=> "さとう たろう"
```

### Generate Male or Female Full Name

```ruby
male_name = Faker::JapaneseName.male_name
puts male_name[:name]  #=> "佐藤 太郎"
puts male_name[:kana]  #=> "さとう たろう"

female_name = Faker::JapaneseName.female_name
puts female_name[:name]  #=> "佐藤 花子"
puts female_name[:kana]  #=> "さとう はなこ"
```

### Generate Family Name Only

```ruby
family = Faker::JapaneseName.family_name
puts family[:name]  #=> "佐藤"
puts family[:kana]  #=> "さとう"
```

### Generate Given Name Only

```ruby
given = Faker::JapaneseName.given_name
puts given[:name]  #=> "太郎"
puts given[:kana]  #=> "たろう"
```

### Generate Male or Female Given Name

```ruby
male = Faker::JapaneseName.male_given_name
puts male[:name]  #=> "太郎"
puts male[:kana]  #=> "たろう"

female = Faker::JapaneseName.female_given_name
puts female[:name]  #=> "花子"
puts female[:kana]  #=> "はなこ"
```

### About the Return Value

Each method returns a hash with `:name` and `:kana` keys, containing the Japanese name and its reading in kana.

## Data

- Data source: Wikidata (CC0-1.0)
- Data files: Data files in the `data/` directory

## License

- Code: MIT License
- Name data: Wikidata, CC0-1.0 License

## Acknowledgements

This gem was created with reference to [tily/ruby-faker-japanese](https://github.com/tily/ruby-faker-japanese). Many thanks to the original author for inspiration.