# frozen_string_literal: true

require "minitest/autorun"
require_relative "../../lib/faker/japanese_name"

class TestFakerJapaneseName < Minitest::Test
  def test_family_name
    name = Faker::JapaneseName.family_name
    assert name.is_a?(Hash)
    assert name.has_key?(:name)
    assert name.has_key?(:kana)
    assert name[:name].is_a?(String)
    assert name[:kana].is_a?(String)
  end

  def test_given_name
    name = Faker::JapaneseName.given_name
    assert name.is_a?(Hash)
    assert name.has_key?(:name)
    assert name.has_key?(:kana)
    assert name[:name].is_a?(String)
    assert name[:kana].is_a?(String)
  end

  def test_male_given_name
    name = Faker::JapaneseName.male_given_name
    assert name.is_a?(Hash)
    assert name.has_key?(:name)
    assert name.has_key?(:kana)
    assert name[:name].is_a?(String)
    assert name[:kana].is_a?(String)
  end

  def test_female_given_name
    name = Faker::JapaneseName.female_given_name
    assert name.is_a?(Hash)
    assert name.has_key?(:name)
    assert name.has_key?(:kana)
    assert name[:name].is_a?(String)
    assert name[:kana].is_a?(String)
  end

  def test_name
    name = Faker::JapaneseName.name
    assert name.is_a?(Hash)
    assert name.has_key?(:name)
    assert name.has_key?(:kana)
    assert name[:name].is_a?(String)
    assert name[:kana].is_a?(String)
    assert_includes name[:name], " "
  end

  def test_male_name
    name = Faker::JapaneseName.male_name
    assert name.is_a?(Hash)
    assert name.has_key?(:name)
    assert name.has_key?(:kana)
    assert name[:name].is_a?(String)
    assert name[:kana].is_a?(String)
    assert_includes name[:name], " "
  end

  def test_female_name
    name = Faker::JapaneseName.female_name
    assert name.is_a?(Hash)
    assert name.has_key?(:name)
    assert name.has_key?(:kana)
    assert name[:name].is_a?(String)
    assert name[:kana].is_a?(String)
    assert_includes name[:name], " "
  end

  def test_family_name_kana_is_string
    name = Faker::JapaneseName.family_name
    assert name[:kana].is_a?(String)
    refute_empty name[:kana]
  end

  def test_given_name_kana_is_string
    name = Faker::JapaneseName.given_name
    assert name[:kana].is_a?(String)
    refute_empty name[:kana]
  end

  def test_male_given_name_kana_is_string
    name = Faker::JapaneseName.male_given_name
    assert name[:kana].is_a?(String)
    refute_empty name[:kana]
  end

  def test_female_given_name_kana_is_string
    name = Faker::JapaneseName.female_given_name
    assert name[:kana].is_a?(String)
    refute_empty name[:kana]
  end

  def test_name_kana_format
    name = Faker::JapaneseName.name
    assert_match(/\A.+ .+\z/, name[:kana])
  end

  def test_name_is_composed_of_family_and_given
    name = Faker::JapaneseName.name
    family, given = name[:name].split(" ", 2)
    family_kana, given_kana = name[:kana].split(" ", 2)
    assert family
    assert given
    assert family_kana
    assert given_kana
  end
end
