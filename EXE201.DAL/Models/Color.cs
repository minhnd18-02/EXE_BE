﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EXE201.DAL.Models;

[Table("Color")]
public partial class Color
{
    [Key]
    [Column("ColorID")]
    public int ColorId { get; set; }

    [StringLength(50)]
    public string ColorName { get; set; }

    [StringLength(7)]
    [Unicode(false)]
    public string HexCode { get; set; }

    [InverseProperty("Color")]
    public virtual ICollection<ProductColor> ProductColors { get; set; } = new List<ProductColor>();
}