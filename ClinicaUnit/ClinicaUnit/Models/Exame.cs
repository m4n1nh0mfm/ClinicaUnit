﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicaUnit.Models
{
    /*    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [NOME] VARCHAR (50)  NOT NULL,
    [OBS]  VARCHAR (500) NULL,*/
    public class Exame
    {
        private Int32 Id;
        private String Nome;
        private String Obs;
        private Int32 Id_convenio;
        private String Nome_convenio;


        public int Id1
        {
            get
            {
                return Id;
            }

            set
            {
                Id = value;
            }
        }

        public string Nome1
        {
            get
            {
                return Nome;
            }

            set
            {
                Nome = value;
            }
        }

        public string Obs1
        {
            get
            {
                return Obs;
            }

            set
            {
                Obs = value;
            }
        }

        public string nome_convenio
        {
            get
            {
                return Nome_convenio;
            }

            set
            {
                Nome_convenio = value;
            }
        }

        public int id_convenio
        {
            get
            {
                return Id_convenio;
            }

            set
            {
                Id_convenio = value;
            }
        }
    }
}