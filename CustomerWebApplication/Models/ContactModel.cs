using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CustomerWebApplication.Models
{
    public class ContactModel
    {

        public int CustomerId { get; set; }

        [Required]
        [MaxLength(30, ErrorMessage = "First Name Length should be more then 30 charecters.")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }
        [Required]
        [MaxLength(30, ErrorMessage = "Last Name Length should be more then 30 charecters.")]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }
        [Required]
        [EmailAddress]
        [MaxLength(50, ErrorMessage = "Email Length should be more then 50 charecters.")]
        public string Email { get; set; }

        [Required(ErrorMessage = "You must provide a mobile number")]
        [Display(Name = "Mobile Number")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid phone number Length should be 10")]
        public string PhoneNumber { get; set; }
               
        public bool Status { get; set; }
    }
}