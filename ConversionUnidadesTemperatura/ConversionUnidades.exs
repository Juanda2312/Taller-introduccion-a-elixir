defmodule ConversionUnidades do
  @moduledoc """
  Módulo para convertir temperaturas de Celsius a Fahrenheit y Kelvin, mostrando el resultado personalizado.

  - autor: Juan David Tapiero
  - fecha: 28/08/2025
  - licencia: GNU GPL V3
  """
  @doc """
  Función principal que solicita el nombre y la temperatura, realiza la conversión y muestra el resultado.
  """
  def main do
    nombre = "Ingrese su nombre:"
    |> Util.ingresar(:texto)
    "Ingrese la temperatura (Celcius):"
    |> Util.ingresar(:real)
    |> convertir_temperatura()
    |> generar_mensaje(nombre)
    |> Util.mostrar_mensaje()
  end

  defp convertir_temperatura(temperatura) do
    {((temperatura * 9 / 5) + 32), (temperatura + 273.15)}
  end

  defp generar_mensaje({f,k},nombre) do
    {f,k} = {f |> Float.round(1), k |> Float.round(1)}
    "#{nombre}, la temperatura es:
    - #{f} °F
    - #{k} K"
  end
end

ConversionUnidades.main()
