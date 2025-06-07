using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DentistaFroms.Models
{
    public class Consulta
    {
        public DateTime DataConsulta { get; set; }
        public TimeSpan HoraConsulta { get; set; }

        public int ID_Paciente { get; set; }
        public string Nome_Paciente { get; set; }

        public int? ID_Medico { get; set; }
        public string Nome_Medico { get; set; }
        public string Especialidade_Medico { get; set; }

        public int? ID_Enfermeiro { get; set; }
        public string Nome_Enfermeiro { get; set; }
    }
}
