defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "fizz" do
    assert "Fizz" = Fizzbuzz.fizzbuzz(3)
  end

  test "buzz" do
    assert "Buzz" = Fizzbuzz.fizzbuzz(5)
  end

  test "FizzBuzz" do
    assert "FizzBuzz" = Fizzbuzz.fizzbuzz(15)
  end

  test "Non-integer rejected" do
    assert_raise(ArgumentError, fn -> Fizzbuzz.fizzbuzz(1.0) end)
    assert_raise(ArgumentError, fn -> Fizzbuzz.fizzbuzz(true) end)
    assert_raise(ArgumentError, fn -> Fizzbuzz.fizzbuzz(:atom) end)
    assert_raise(ArgumentError, fn -> Fizzbuzz.fizzbuzz("1") end)
    assert_raise(ArgumentError, fn -> Fizzbuzz.fizzbuzz([1,2,3]) end)
    assert_raise(ArgumentError, fn -> Fizzbuzz.fizzbuzz({1,2}) end)
  end
end
