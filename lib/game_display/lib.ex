defmodule GameDisplay.Lib do
  alias Decimal
  
  @pi :math.pi
  @pi2 :math.pi*2
  
  def dec_parse(""), do: Decimal.new(0)
  def dec_parse(nil), do: Decimal.new(0)
  def dec_parse(d) when is_number(d), do: Decimal.new(d)
  def dec_parse(s), do: Decimal.new(s)
  
  def deg2rad(d), do: d * (@pi/180)
  def rad2deg(r), do: r * (180/@pi)
end