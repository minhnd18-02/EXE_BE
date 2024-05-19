﻿using EXE201.DAL.Models;
using MCC.DAL.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EXE201.DAL.Interfaces
{
    public interface IUserRepository : IGenericRepository<User>
    {
        Task<User> GetUserByUsername(string username);
        Task<User> GetUserByEmail(string email);
    }
}
