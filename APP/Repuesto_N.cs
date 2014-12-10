using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using Entidades;

namespace Negocio
{
    public class Repuesto_N
    {
       public ERepuesto fila(string id_rep)
        {
            ERepuesto repuestoEN = RepuestoDAO.filaRepuestos(id_rep);
            return repuestoEN;
        }


        public bool agregarRepuesto(ERepuesto repuestoEN)
        {
            if (repuestoEN == null)
            {
                return false;
            }
            else
            {
                if (fila(repuestoEN.ID_repuesto) == null)
                {
                    RepuestoDAO.agregarRepuesto(repuestoEN);
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public Boolean encontrarRepuesto(ERepuesto repuestoEN)
        {
            if (repuestoEN.ID_repuesto != "")
            {
                return false;
            }
            else
            {
                if (RepuestoDAO.existeRepuesto(repuestoEN))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public ERepuesto buscarRepuesto(string idRepuesto)
        {
            ERepuesto repuestoEN = new ERepuesto();
            repuestoEN = RepuestoDAO.filaRepuestos(idRepuesto);
            return repuestoEN;
        }
    }
}
