defmodule CostoEnvio do
  @moduledoc """
  Módulo para calcular el costo de envío de un paquete según peso y tipo de envío.

  - autor: Juan David Tapiero
  - fecha: 28/08/2025
  - licencia: GNU GPL V3
  """
  @doc """
  Función principal que solicita los datos del destinatario, peso y tipo de envío, calcula la tarifa y muestra el resultado.
  """
  def main do
    {nombre, peso, tipo} = {
      Util.ingresar("Ingrese el nombre del destinatario:", :texto),
      Util.ingresar("Ingrese el peso del paquete en kg:", :real),
      Util.ingresar("Ingrese el tipo de envio (Economico, Express, Internacional):", :texto)
    }
    {tarifa, nuevo_tipo} = calcular_tarifa(peso, tipo)
    generar_mensaje(tarifa, peso, nuevo_tipo, nombre)
    |> Util.mostrar_mensaje()
  end

  defp calcular_tarifa(peso,tipo) do
    case tipo do
      "Economico" -> {5000*peso, tipo}
      "Express" -> {8000*peso, tipo}
      "Internacional" -> if peso > 5 do {12000*peso, tipo} else {15000*peso, tipo} end
      _ ->
      Util.mostrar_mensaje("Tipo de envio no reconocido.")
      nuevo_tipo = Util.ingresar("Ingrese el tipo de envio (Economico, Express, Internacional):", :texto)
      calcular_tarifa(peso,nuevo_tipo)
    end
  end

  defp generar_mensaje(tarifa,peso,tipo,nombre) do
    "El costo de envio para #{nombre} es de #{tarifa} pesos, con un peso de #{peso} kg y tipo de envio #{tipo}."
  end
end

CostoEnvio.main()
