defmodule RegistroVehiculos do
  @moduledoc """
  Módulo para registrar vehículos y calcular la tarifa de peaje según tipo y peso.

  - autor: Juan David Tapiero
  - fecha: 28/08/2025
  - licencia: GNU GPL V3
  """
  @doc """
  Función principal que solicita los datos del vehículo, calcula la tarifa y muestra el resultado.
  """
  def main do
    {placa, tipo, peso} = {
      Util.ingresar("Ingrese la placa del vehiculo:", :texto),
      Util.ingresar("Ingrese el peso del vehiculo en toneladas:", :real),
      Util.ingresar("Ingrese el tipo de vehiculo(Carro, Moto o Camión):", :texto)
    }
    {tarifa, nuevo_tipo} = asignar_tarifa(tipo, peso)
    generar_mensaje(tarifa, placa, nuevo_tipo)
    |> Util.mostrar_mensaje()
  end

  defp asignar_tarifa(tipo,peso) do
    case tipo do
      "Carro" -> {10000, tipo}
      "Moto" -> {5000, tipo}
      "Camión" -> {20000 + (2000 * peso), tipo}
      _ ->
        Util.mostrar_mensaje("Tipo de vehiculo no reconocido.")
        nuevo_tipo = Util.ingresar("Ingrese el tipo de vehiculo(Carro, Moto o Camión):", :texto)
        asignar_tarifa(nuevo_tipo,peso)
    end

  end

  defp generar_mensaje(tarifa,placa,tipo) do
    "Vehiculo #{placa} (#{tipo}) debe pagar #{tarifa}."
  end

end

RegistroVehiculos.main()
