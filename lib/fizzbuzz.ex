defmodule Fizzbuzz do
  @moduledoc """
  This is a simple Fizzbuzz script written in Elixir.
  """

  @doc """
  Fizzbuzz

  ## Examples

      iex> Fizzbuzz.fizzbuzz(3,5)
      Fizz
      4
      Buzz
  """
  def fizzbuzz(first, last) do
      Enum.to_list(first..last) |> Enum.map(&process/1) |> Enum.map(&handle/1) |> Enum.map(&print/1)
  end

  defp process(num) do
        {Integer.to_string(num), rem(num, 3), rem(num, 5)}
  end

  defp handle({_,0,0}) do
    'FizzBuzz'
  end

  defp handle({_,0,_}) do
    'Fizz'
  end

  defp handle({_,_,0}) do
    'Buzz'
  end

  defp handle({x,_,_}) do
    x
  end

  defp print(value) do
    IO.puts(value)
  end
end

Fizzbuzz.fizzbuzz(1,100)