﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace CustomerWebApplication
{
    public static class GlobalVaribles
    {

        public static HttpClient WebApiClient = new HttpClient();

        static GlobalVaribles() {
            WebApiClient.BaseAddress = new Uri("http://localhost:51163/api/");
            WebApiClient.DefaultRequestHeaders.Clear();
            WebApiClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }
    }
}