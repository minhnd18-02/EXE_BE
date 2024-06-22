﻿using EXE201.DAL.DTOs.PaymentDTOs;
using EXE201.DAL.DTOs;
using EXE201.DAL.Models;
using MCC.DAL.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EXE201.DAL.DTOs.PaymentDTOs.EXE201.DAL.DTOs.PaymentDTOs;
using LMSystem.Repository.Helpers;

namespace EXE201.DAL.Interfaces
{
    public interface IPaymentRepository : IGenericRepository<Payment>
    {
        Task<ResponeModel> AddPaymentForUser(int userId, AddPaymentDTO paymentDetails);
        Task<ResponeModel> ConfirmPayment(int paymentId);
        Task<PagedResponseDTO<PaymentHistoryDto>> GetPaymentHistoryByUserIdAsync(int userId, PaginationParameter paginationParameter);
        Task<IEnumerable<ProfitDTO>> GetProfitData(DateTime startDate, DateTime endDate);
    }
}
