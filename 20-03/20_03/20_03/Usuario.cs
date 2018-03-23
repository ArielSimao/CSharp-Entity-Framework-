namespace _20_03
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Usuario")]
    public partial class Usuario
    {
        public int id { get; set; }

        [StringLength(50)]
        public string nome { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        [StringLength(10)]
        public string senha { get; set; }
    }
}
