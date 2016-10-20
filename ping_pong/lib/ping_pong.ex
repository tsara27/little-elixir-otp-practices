defmodule PingPong do
  def send_message do
    receive do
      :ping ->
        IO.puts "replied with pong"
      :pong ->
        IO.puts "replied with ping"
      _ ->
        IO.puts "no response"
    end
    send_message
  end
end
