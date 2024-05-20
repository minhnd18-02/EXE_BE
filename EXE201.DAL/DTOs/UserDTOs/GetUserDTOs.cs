﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EXE201.BLL.DTOs.UserDTOs
{
    public class GetUserDTOs
    {
        public int UserID { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
        public string Phone { get; set; }
        public int? Gender { get; set; }
        public DateOnly? DateOfBirth { get; set; }
        public string Email { get; set; }
        public string Image { get; set; }
        public string Status { get; set; }
        public List<string> Roles { get; set; }
    }
}