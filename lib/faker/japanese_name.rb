# frozen_string_literal: true

require_relative "japanese_name/version"

# The Faker module serves as the top-level namespace for all Faker functionality.
module Faker
  # The JapaneseName module provides methods for generating Japanese names and their kana representations.
  module JapaneseName
    def self.family_name
      @family_names ||= load_data("family_name.dat")

      [:name, :kana].zip(@family_names.sample).to_h
    end

    def self.given_name
      [male_given_name, female_given_name].sample
    end

    def self.male_given_name
      @male_given_names ||= load_data("male_given_name.dat")

      [:name, :kana].zip(@male_given_names.sample).to_h
    end

    def self.female_given_name
      @female_given_names ||= load_data("female_given_name.dat")

      [:name, :kana].zip(@female_given_names.sample).to_h
    end

    def self.name
      combine_names(family_name: family_name, given_name: given_name)
    end

    def self.male_name
      combine_names(family_name: family_name, given_name: male_given_name)
    end

    def self.female_name
      combine_names(family_name: family_name, given_name: female_given_name)
    end

    def self.combine_names(family_name:, given_name:)
      {
        name: "#{family_name[:name]} #{given_name[:name]}",
        kana: "#{family_name[:kana]} #{given_name[:kana]}"
      }
    end

    def self.load_data(filename)
      ::File.readlines(
        ::File.join(::File.expand_path("../../data", __dir__), filename),
        chomp: true
      ).map { |line| line.split("\t", 2) }
    end
  end
end
