defmodule BirdCount do
  def today(list) do
    List.first(list)
  end

  def increment_day_count(list) when list == [], do: [1]
  def increment_day_count(list) do
    List.update_at(list, 0, &(&1 + 1))
  end

  def has_day_without_birds?(list) do
    Enum.member?(list, 0)
  end

  def total(list) do
    Enum.sum(list)
  end

  def busy_days(list) when list == [], do: 0
  def busy_days(list) do
    Enum.count(list, fn item -> item >= 5 end)
  end
end
