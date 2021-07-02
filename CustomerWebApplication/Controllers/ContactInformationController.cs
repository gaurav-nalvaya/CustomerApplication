using CustomerWebApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace CustomerWebApplication.Controllers
{
    public class ContactInformationController : Controller
    {

        // GET: ContactInformation
        public ActionResult Index()
        {
            IEnumerable<ContactModel> contactList = new List<ContactModel>();
            try
            {
                HttpResponseMessage response = GlobalVaribles.WebApiClient.GetAsync("ContactInformation").Result;
                contactList = response.Content.ReadAsAsync<IEnumerable<ContactModel>>().Result;
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = "SomeThing Went Wrong Please try after sometime.";
            }           
           
            return View(contactList);
        }

        public ActionResult AddOrEdit(int id = 0)
        {
            
            if (id == 0)
            {
                return View(new ContactModel());
            }
            else
            {
                try
                {
                    HttpResponseMessage response = GlobalVaribles.WebApiClient.GetAsync("ContactInformation/" + id.ToString()).Result;
                    return View(response.Content.ReadAsAsync<ContactModel>().Result);
                }
                catch (Exception ex)
                {
                    TempData["ErrorMessage"] = "SomeThing Went Wrong Please try after sometime.";
                    return RedirectToAction("Index");
                }
            }
        }

        [HttpPost]
        public ActionResult AddOrEdit(ContactModel contact)
        {
            try
            {
                 if (contact.CustomerId == 0)
                {
                    HttpResponseMessage response = GlobalVaribles.WebApiClient.PostAsJsonAsync("ContactInformation", contact).Result;
                    TempData["SuccessMessage"] = "Record are succesfull added";
                }
                else
                {
                    HttpResponseMessage response = GlobalVaribles.WebApiClient.PutAsJsonAsync("ContactInformation/"+contact.CustomerId.ToString(),contact).Result;
                    TempData["SuccessMessage"] = "Record are succesfull updated";

                }
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = "SomeThing Went Wrong Please try after sometime.";
            }
            return RedirectToAction("Index");
        }

       
        public ActionResult DeleteCustomer(string customerId)
        {
            try
            {
                if (customerId != null)
                {
                    HttpResponseMessage response = GlobalVaribles.WebApiClient.DeleteAsync("ContactInformation/" + customerId.ToString()).Result;
                    TempData["SuccessMessage"] = "Record are Deleted Succesfully";
                }
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = "SomeThing Went Wrong Please try after sometime.";
            }
            return RedirectToAction("Index");
        }
    }
}