defmodule Measurer do
  def get_size(width, height, depth) do
    volume = width * height * depth

    area = width  * height * 2 +
           width  * depth  * 2 +
           height * depth  * 2

    {area, volume}
  end
end
