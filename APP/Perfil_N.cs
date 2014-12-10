using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using Entidades;


namespace Negocio
{
    public class Perfil_N
    {
        public EPerfil fila(string user)
        {
            EPerfil perfilEN = PerfilDAO.filaPerfiles(user);
            return perfilEN;
        }

        public bool agregarPerfil(EPerfil perfilEN)
        {
            if (perfilEN == null)
            {
                return false;
            }
            else
            {
                if (fila(perfilEN.Username) == null)
                {
                    PerfilDAO.agregarPerfil(perfilEN);
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public EPerfil buscarPerfil(string username)
        {
            EPerfil perfilEN = new EPerfil();
            perfilEN = PerfilDAO.filaPerfiles(username);
            return perfilEN;
        }

        public int buscarTipo(string username)
        {
            int tipo = 0;
            EPerfil perfilEN = new EPerfil();
            perfilEN = PerfilDAO.filaPerfiles(username);
            tipo = perfilEN.Tipo_permiso;
            return tipo;
        }

        public Boolean autentificarPerfil(EPerfil perfilEN)
        {
            if (perfilEN.Password.Equals("") || perfilEN.Username.Equals(""))
            {
                return false;
            }
            else
            {
                if (PerfilDAO.existePerfil(perfilEN))
                {
                     return true;
                }
                else
                {
                     return false;
                }
            }
        }


    }
}
