defmodule ElixirAlgo.Search.BinarySearchTest do
  use ExUnit.Case

  import ElixirAlgo.Search

  test "binary search item found" do
    assert binary_search([1,2,3,4,5,6,7,8,9,10], 10) == true
  end

  test "binary search item not found" do
    assert binary_search([1,2,3,4,5,6,7,8,9,10], 100) == false
  end

  test "binary search on empty list" do
    assert binary_search([], 10) == false
  end
end
