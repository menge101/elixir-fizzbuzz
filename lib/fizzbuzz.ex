defmodule Fizzbuzz do
  @moduledoc """
  This is a simple Fizzbuzz script written in Elixir.
  """

  @doc """
  Fizzbuzz

  ## Examples

      iex> Fizzbuzz.fizzbuzz(3)
      "Fizz"
      iex> Fizzbuzz.fizzbuzz(5)
      "Buzz"
      iex> Fizzbuzz.fizzbuzz(15)
      "FizzBuzz"
  """
  def fizzbuzz(num) when is_integer(num) do
    num |> process |> handle
  end

  def fizzbuzz(not_num) do
    raise ArgumentError, message: "Fizzbuzz only supports integers. #{inspect not_num} is not supported."
  end

  defp process(num) do
    {Integer.to_string(num), rem(num, 3), rem(num, 5)}
  end

  defp handle({_,0,0}) do
    "FizzBuzz"
  end

  defp handle({_,0,_}) do
    "Fizz"
  end

  defp handle({_,_,0}) do
    "Buzz"
  end

  defp handle({x,_,_}) do
    x
  end
end

first = 1
last = 10000
first..last
|> Enum.map(&Task.async(Fizzbuzz, :fizzbuzz, [&1]))
|> Enum.map(&Task.await/1)
|> Enum.map(&IO.puts/1)