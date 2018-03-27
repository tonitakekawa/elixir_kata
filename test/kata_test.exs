defmodule KataTest do
  use ExUnit.Case
  doctest Kata

  import SleighAuthentication
  import RemoveChars
  import Dinglemouse
  import Measurer

  test "greets the world" do
    assert Kata.hello() == :world
  end

  test "authenticates with correct credentials" do
    assert authenticate?("Santa Claus", "Ho Ho Ho!")
  end

  test "doesn't authenticate with incorrect credentials" do
    assert authenticate?("Santa", "Ho Ho Ho!") == false
    assert authenticate?("Santa Claus", "Ho Ho!") == false
    assert authenticate?("jhoffner", "CodeWars") == false
  end

  test "basic test" do
    assert remove_chars("eloquent") == "loquen"
    assert remove_chars("country") == "ountr"
    assert remove_chars("person") == "erso"
    assert remove_chars("place") == "lac"
    assert remove_chars("ok") == ""
  end

  test "one" do
    assert {1, 15, 15} == Dinglemouse.human_years_cat_years_dog_years(1)
  end

  test "two" do
    assert {2, 24, 24} == Dinglemouse.human_years_cat_years_dog_years(2)
  end

  test "ten" do
    assert {10, 56, 64} == Dinglemouse.human_years_cat_years_dog_years(10)
  end

  test "basic cases" do
    assert get_size(4, 2, 6) == {88, 48}
    assert get_size(1, 1, 1) == {6, 1}
    assert get_size(1, 2, 1) == {10,2}
    assert get_size(1, 2, 2) == {16, 4}
    assert get_size(10, 10, 10) == {600, 1000}
    assert get_size(4, 2, 6) == {88, 48}
  end

end
