defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  describe "Operation - [sum]" do
      test "when sum only one number it should return itself" do
        assert Calculator.sum([1]) == 1
        assert Calculator.sum([2]) == 2
        assert Calculator.sum([5]) == 5
      end

      test "when sum two numbers it should return the sum of them" do
        assert Calculator.sum([1, 2]) == 3
        assert Calculator.sum([5, 5]) == 10
        assert Calculator.sum([10, 10]) == 20
      end

      test "when sum more than three numbers it should return the sum of all of them" do
        assert Calculator.sum([1, 2, 3, 4]) == 10
        assert Calculator.sum([5, 5, 5, 5]) == 20
        assert Calculator.sum([10, 10, 10, 10]) == 40
        assert Calculator.sum([10, 10, 10, 10, 4]) == 44
        assert Calculator.sum([10, 10, 10, 10, 10, 5]) == 55
      end
  end


  describe "Operation - [sub]" do
    test "when sub only one number it should return itself" do
      assert Calculator.sub([1]) == 1
      assert Calculator.sub([2]) == 2
      assert Calculator.sub([5]) == 5
    end

    test "when sub two numbers it should the substraction of them" do
      assert Calculator.sub([1, 2]) == -1
      assert Calculator.sub([5, 5]) == 0
      assert Calculator.sub([10, 5]) == 5
    end

    test "when sub more than three numbers it should return the sub of all of them" do
      assert Calculator.sub([1, 2, 3, 4]) == -8
      assert Calculator.sub([5, 5, 5, 5]) == -10
      assert Calculator.sub([10, 10, 10, 10]) == -20
      assert Calculator.sub([10, 10, 10, 10, 4]) == -24
      assert Calculator.sub([10, 10, 10, 10, 10, 5]) == -35
      assert Calculator.sub([100, 10, 10, 10, 10, 5]) == 55
    end
  end

  describe "Operation [multiply]" do
    test "when multiply only one number it should return itself" do
      assert Calculator.multiply([1]) == 1
      assert Calculator.multiply([2]) == 2
      assert Calculator.multiply([5]) == 5
    end

    test "when multiply two numbers it should the multiplication of them" do
      assert Calculator.multiply([1, 2]) == 2
      assert Calculator.multiply([5, 5]) == 25
      assert Calculator.multiply([10, 5]) == 50
    end

    test "when multiply more than three numbers it should return the multiply of all of them" do
      assert Calculator.multiply([1, 2, 3, 4]) == 24
      assert Calculator.multiply([5, 5, 5, 5]) == 5*5*5*5
      assert Calculator.multiply([10, 10, 10, 10]) == 10*10*10*10
      assert Calculator.multiply([10, 10, 10, 10, 4]) == 10*10*10*10*4
      assert Calculator.multiply([10, 10, 10, 10, 10, 5]) == 10*10*10*10*10*5
      assert Calculator.multiply([100, 10, 10, 10, 10, 5]) == 100*10*10*10*10*5
    end
  end

  describe "Operation [divide]" do
    test "when divide only one number it should return itself" do
      assert Calculator.divide([1]) == 1
      assert Calculator.divide([2]) == 2
      assert Calculator.divide([5]) == 5
    end

    test "when divide two numbers it should the division of them" do
      assert Calculator.divide([1, 2]) == 0.5
      assert Calculator.divide([5, 5]) == 1
      assert Calculator.divide([10, 5]) == 2
    end

    test "when divide more than three numbers it should return the divide of all of them" do
      assert Calculator.divide([1, 2, 3, 4]) == 1/2/3/4
      assert Calculator.divide([5, 5, 5, 5]) == 5/5/5/5
      assert Calculator.divide([10, 10, 10, 10]) == 10/10/10/10
      assert Calculator.divide([10, 10, 10, 10, 4]) == 10/10/10/10/4
      assert Calculator.divide([10, 10, 10, 10, 10, 5]) == 10/10/10/10/10/5
      assert Calculator.divide([100, 10, 10, 10, 10, 5]) == 100/10/10/10/10/5
    end

  end
end
