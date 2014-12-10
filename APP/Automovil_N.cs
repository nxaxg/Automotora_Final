using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using Entidades;

namespace Negocio
{
    public class Automovil_N
    {
        public EAutomovil fila(string vin)
        {
            EAutomovil autoEN = AutomovilDAO.filaAutos(vin);
            return autoEN;
        }

        public bool agregarAuto(EAutomovil autoEN)
        {
            if (autoEN == null)
            {
                return false;
            }
            else
            {
                if (fila(autoEN.VIN_auto) == null)
                {
                    AutomovilDAO.agregarAuto(autoEN);
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public EAutomovil buscarPorVin(string vin)
        {
            EAutomovil autoEN = new EAutomovil();
            autoEN = AutomovilDAO.filaAutos(vin);
            return autoEN;
        }

        public string buscarMarca(string vin)
        {
            string marca = "";
            EAutomovil autoEN = new EAutomovil();
            autoEN = AutomovilDAO.filaAutos(vin);
            marca = autoEN.Marca_auto;
            return marca;
        }
    }
}
