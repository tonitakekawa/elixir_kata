defmodule SleighAuthentication do
  def authenticate?("Santa Claus", "Ho Ho Ho!"), do: true
  def authenticate?(_, _),                       do: false
end
