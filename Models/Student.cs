using System.ComponentModel.DataAnnotations;

namespace WebStud.Models
{
    public class Student
    {
        [Key]
        public string StudentID {  get; set; }  
        public string? StudetnName { get; set; }
        public int? StudentAge { get; set; }
    }

    /*
     Step 1: Models (defines classes)
    Step 2: Scaffold Controller with views
           2A: Select Model, add dbContext
    Step 3: Add migration
    Step 4: update-database
    Optional Step 5: Edit navbar for ease of navigation
     */
}
