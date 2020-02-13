defmodule FibonnaciGenServer do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, %{}, name: :fibonnaci_gen_server)
  end

  def init(__) do
    state = %{
      nth_count: %{}
    }

    {:ok, state}
  end

  def generate_fibonnaci_series() do
    GenServer.call(
      :generate_fibonnaci_series,
      {:generate_fibonnaci_series}
    )
  end

  def handle_call({:generate_fibonnaci_series}, _state) do
    :timer.sleep(3000)

    Enum.each(1..100, fn to ->
      :timer.sleep(3000)
      IO.puts(fib(1, 1, to))
    end)

    {:ok, _state}
  end

  defp fib(a, b, n) do
    case n do
      0 ->
        a

      _ ->
        fib(b, a + b, n - 1)
    end
  end
end
