namespace _20_03
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Conexao : DbContext
    {
        public Conexao()
            : base("name=Conexao")
        {
        }

        public virtual DbSet<Usuario> Usuario { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Usuario>()
                .Property(e => e.nome)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.senha)
                .IsUnicode(false);
        }
    }
}
