using System.ComponentModel.DataAnnotations;

namespace Diary.Models
{
    public class MyContact
    {
        // Informações do contato
        [Key]
        public int ID { get; set; }

        [Required, StringLength(100)]
        public string Name { get; set; }

        [Required, StringLength(100), DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required, StringLength(100), DataType(DataType.PhoneNumber)]
        public string Phone { get; set; }
    }
}