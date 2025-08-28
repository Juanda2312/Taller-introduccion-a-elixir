defmodule CalcularSalario do
  @moduledoc """
  Módulo para calcular el salario total de un empleado, considerando salario base y horas extra.

  - autor: Juan David Tapiero
  - fecha: 28/08/2025
  - licencia: GNU GPL V3
  """

  @doc """
  Función principal que solicita los datos al usuario, calcula el salario total y muestra el resultado.
  """
  def main do
    {nombre, salario, horas_extra} = {
      Util.ingresar("Ingrese su nombre:", :texto),
      Util.ingresar("Ingrese su salario:", :real),
      Util.ingresar("Ingrese las horas extra trabajadas:", :entero)
    }
    calcular_salario(salario, horas_extra)
    |> generar_mensaje(nombre)
    |> Util.mostrar_mensaje()
  end

  defp calcular_salario(salario,horas_extra) do
    (salario+(salario*1.5*horas_extra)) |> Float.round(2)
  end

  defp generar_mensaje(salario,nombre) do
    "El salario total de #{nombre} es #{salario}."
  end

end
CalcularSalario.main()
