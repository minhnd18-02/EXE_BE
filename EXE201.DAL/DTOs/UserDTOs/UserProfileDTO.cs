﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EXE201.DAL.DTOs.UserDTOs
{
    public class UserProfileDTO
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
        public string Phone { get; set; }
        public int? Gender { get; set; }
        public DateOnly? DateOfBirth { get; set; }
        public string Email { get; set; }
        public string ProfileImage { get; set; }
        public string AccountStatus { get; set; }
        public IEnumerable<string> Roles { get; set; }
        public IEnumerable<string> MembershipTypes { get; set; }
    }

}