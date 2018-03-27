defmodule Dinglemouse do
  @moduledoc false

  def human_years_cat_years_dog_years (human_years) do
    cat = Stream.concat([15, 9], Stream.repeatedly(fn -> 4 end))
    dog = Stream.concat([15, 9], Stream.repeatedly(fn -> 5 end))

    cat_years = cat
    |> Enum.take(human_years)
    |> Enum.sum

    dog_years = dog
    |> Enum.take(human_years)
    |> Enum.sum

    {human_years, cat_years, dog_years}
  end
end
