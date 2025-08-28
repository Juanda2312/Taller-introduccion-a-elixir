defmodule InventarioLibreria do
  @moduledoc """
  Módulo para gestionar el inventario de una librería, calculando el valor total de los libros disponibles.

  - autor: Juan David Tapiero
  - fecha: 28/08/2025
  - licencia: GNU GPL V3
  """
  @doc """
  Función principal que solicita los datos del libro, calcula el total y muestra el mensaje.
  """
  def main do
    titulo = "Ingrese el titulo del libro:"
    |> Util.ingresar(:texto)
    unidades = "Ingrese la cantidad de unidades disponibles:"
    |> Util.ingresar(:entero)
    precio = "Ingrese el precio por unidad del libro:"
    |> Util.ingresar(:real)
    total = calcular_total(unidades, precio)
    generar_mensaje(titulo, unidades, total)
    |> Util.mostrar_mensaje()
  end

  defp calcular_total(unidades, precio) do
    unidades * precio
  end

  defp generar_mensaje(titulo, unidades, total) do
    total = total |> Float.round(2)
    "El libro #{titulo} tiene #{unidades} unidades. Con un valor total del inventario es de $#{total}."
  end
end

InventarioLibreria.main()
