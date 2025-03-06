using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebStud.Models;

namespace WebStud.Data
{
    public class WebStudContext : DbContext
    {
        public WebStudContext (DbContextOptions<WebStudContext> options)
            : base(options)
        {
        }

        public DbSet<WebStud.Models.Student> Student { get; set; } = default!;
    }
}
