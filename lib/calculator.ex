defmodule Calculator do
  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end

  def sub([head | tail]) do
    head - sum(tail)
  end


  def multiply([head]), do: head
  def multiply([head | tail]), do: head * multiply(tail)

  def divide([first]), do: first
  def divide([first, second]), do: first / second
  def divide([first, second | tail]) do
    divided = first / second
    divide([divided] ++ tail)
  end
end
