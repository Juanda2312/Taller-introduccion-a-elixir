defmodule ConsumoCombustible do
  @moduledoc """
  Módulo para calcular el rendimiento de combustible de un vehículo a partir de la distancia recorrida y el combustible consumido.

  - autor: Juan David Tapiero
  - fecha: 28/08/2025
  - licencia: GNU GPL V3
  """
  @doc """
  Función principal que solicita los datos al usuario, calcula el rendimiento y muestra el resultado.
  """
  def main do
    {nombre, distancia, combustible} = {
      Util.ingresar("Ingrese su nombre:", :texto),
      Util.ingresar("Ingrese la distancia recorrida (en km):", :real),
      Util.ingresar("Ingrese la cantidad de combustible consumido (en litros):", :real)
    }
    rendimiento = calcular_rendimiento(distancia, combustible)
    generar_mensaje(nombre, rendimiento)
    |> Util.mostrar_mensaje()
  end

  defp calcular_rendimiento(distancia,combustible)do
    distancia/combustible
  end

  defp generar_mensaje(nombre,rendimiento) do
    rendimiento = rendimiento |> Float.round(2)
    "Hola #{nombre}, el consumo de combustible del vehiculo es de #{rendimiento} km/L."
  end
end
ConsumoCombustible.main()
