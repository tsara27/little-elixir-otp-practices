defmodule MeterToLengthConverter do
  defmodule Feet do
    def convert(m) do
      m * 3.28084
    end
  end

  defmodule Inch do
    def convert(m) do
      m * 39.3701
    end
  end
end

defmodule MeterToLength.Centimeter do
  def convert(m) do
    m * 100
  end
end

defmodule MeterToLength do
  def convert(:yard, m) when is_number(m) and m >= 0, do: m * 1.09361
end
