﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EXE201.DAL.Models;

[Table("RentalOrder")]
public partial class RentalOrder
{
    [Key]
    [Column("OrderID")]
    public int OrderId { get; set; }

    [Column("UserID")]
    public int? UserId { get; set; }

    [StringLength(15)]
    [Unicode(false)]
    public string OrderStatus { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? DatePlaced { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? DueDate { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? ReturnDate { get; set; }

    [StringLength(255)]
    [Unicode(false)]
    public string ReturnReason { get; set; }

    [Column(TypeName = "decimal(10, 2)")]
    public decimal? OrderTotal { get; set; }

    [InverseProperty("Order")]
    public virtual ICollection<Deposit> Deposits { get; set; } = new List<Deposit>();

    [InverseProperty("Order")]
    public virtual ICollection<Payment> Payments { get; set; } = new List<Payment>();

    [InverseProperty("Order")]
    public virtual ICollection<RentalOrderDetail> RentalOrderDetails { get; set; } = new List<RentalOrderDetail>();

    [ForeignKey("UserId")]
    [InverseProperty("RentalOrders")]
    public virtual User User { get; set; }
}