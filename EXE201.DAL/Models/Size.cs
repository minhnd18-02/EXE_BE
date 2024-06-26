﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EXE201.DAL.Models;

[Table("Size")]
public partial class Size
{
    [Key]
    [Column("SizeID")]
    public int SizeId { get; set; }

    [StringLength(50)]
    public string SizeName { get; set; }

    [InverseProperty("Size")]
    public virtual ICollection<ProductSize> ProductSizes { get; set; } = new List<ProductSize>();
}