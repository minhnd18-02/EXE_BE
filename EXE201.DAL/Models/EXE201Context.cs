﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace EXE201.DAL.Models;

public partial class EXE201Context : DbContext
{
    public EXE201Context()
    {
    }

    public EXE201Context(DbContextOptions<EXE201Context> options)
        : base(options)
    {
    }

    public virtual DbSet<Address> Addresses { get; set; }

    public virtual DbSet<Cart> Carts { get; set; }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Feedback> Feedbacks { get; set; }

    public virtual DbSet<Inventory> Inventories { get; set; }

    public virtual DbSet<Membership> Memberships { get; set; }

    public virtual DbSet<MembershipType> MembershipTypes { get; set; }

    public virtual DbSet<Notification> Notifications { get; set; }

    public virtual DbSet<Payment> Payments { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<RentalOrder> RentalOrders { get; set; }

    public virtual DbSet<RentalOrderDetail> RentalOrderDetails { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<User> Users { get; set; }

//    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
//        => optionsBuilder.UseSqlServer("Data Source=LEO\\SQLEXPRESS;Initial Catalog=EXE201;User ID=sa;Password=1234567890");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Address>(entity =>
        {
            entity.HasKey(e => e.AddressID).HasName("PK__Address__091C2A1BCC2900E2");

            entity.Property(e => e.AddressID).ValueGeneratedNever();

            entity.HasOne(d => d.User).WithMany(p => p.Addresses).HasConstraintName("FK__Address__UserID__72C60C4A");
        });

        modelBuilder.Entity<Cart>(entity =>
        {
            entity.HasKey(e => e.CartID).HasName("PK__Cart__51BCD7973A5BA512");

            entity.Property(e => e.CartID).ValueGeneratedNever();

            entity.HasOne(d => d.Product).WithMany(p => p.Carts).HasConstraintName("FK__Cart__ProductID__6FE99F9F");

            entity.HasOne(d => d.User).WithMany(p => p.Carts).HasConstraintName("FK__Cart__UserID__6EF57B66");
        });

        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.CategoryID).HasName("PK__Category__19093A2BBB85E721");

            entity.Property(e => e.CategoryID).ValueGeneratedNever();
        });

        modelBuilder.Entity<Feedback>(entity =>
        {
            entity.HasKey(e => e.FeedbackID).HasName("PK__Feedback__6A4BEDF6B9ECF850");

            entity.Property(e => e.FeedbackID).ValueGeneratedNever();

            entity.HasOne(d => d.Product).WithMany(p => p.Feedbacks).HasConstraintName("FK__Feedback__Produc__6E01572D");

            entity.HasOne(d => d.User).WithMany(p => p.Feedbacks).HasConstraintName("FK__Feedback__UserID__6D0D32F4");
        });

        modelBuilder.Entity<Inventory>(entity =>
        {
            entity.HasKey(e => e.InventoryID).HasName("PK__Inventor__F5FDE6D3E3208F85");

            entity.Property(e => e.InventoryID).ValueGeneratedNever();

            entity.HasOne(d => d.Product).WithMany(p => p.Inventories).HasConstraintName("FK__Inventory__Produ__6A30C649");
        });

        modelBuilder.Entity<Membership>(entity =>
        {
            entity.HasKey(e => e.MembershipID).HasName("PK__Membersh__92A7859918F6C6F3");

            entity.Property(e => e.MembershipID).ValueGeneratedNever();

            entity.HasOne(d => d.MembershipType).WithMany(p => p.Memberships).HasConstraintName("FK__Membershi__Membe__71D1E811");

            entity.HasOne(d => d.User).WithMany(p => p.Memberships).HasConstraintName("FK__Membershi__UserI__70DDC3D8");
        });

        modelBuilder.Entity<MembershipType>(entity =>
        {
            entity.HasKey(e => e.MembershipTypeID).HasName("PK__Membersh__F35A3E59E63BF935");

            entity.Property(e => e.MembershipTypeID).ValueGeneratedNever();
        });

        modelBuilder.Entity<Notification>(entity =>
        {
            entity.HasKey(e => e.NotificationID).HasName("PK__Notifica__20CF2E326EABF1C7");

            entity.Property(e => e.NotificationID).ValueGeneratedNever();

            entity.HasOne(d => d.User).WithMany(p => p.Notifications).HasConstraintName("FK__Notificat__UserI__6C190EBB");
        });

        modelBuilder.Entity<Payment>(entity =>
        {
            entity.HasKey(e => e.PaymentID).HasName("PK__Payment__9B556A58CAC7C79D");

            entity.Property(e => e.PaymentID).ValueGeneratedNever();

            entity.HasOne(d => d.Order).WithMany(p => p.Payments).HasConstraintName("FK__Payment__OrderID__6B24EA82");

            entity.HasOne(d => d.PaymentUser).WithMany(p => p.Payments).HasConstraintName("FK__Payment__Payment__73BA3083");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.ProductID).HasName("PK__Product__B40CC6ED1D052CAB");

            entity.Property(e => e.ProductID).ValueGeneratedNever();

            entity.HasOne(d => d.Category).WithMany(p => p.Products).HasConstraintName("FK__Product__Categor__66603565");
        });

        modelBuilder.Entity<RentalOrder>(entity =>
        {
            entity.HasKey(e => e.OrderID).HasName("PK__RentalOr__C3905BAF987725CA");

            entity.Property(e => e.OrderID).ValueGeneratedNever();

            entity.HasOne(d => d.User).WithMany(p => p.RentalOrders).HasConstraintName("FK__RentalOrd__UserI__6754599E");
        });

        modelBuilder.Entity<RentalOrderDetail>(entity =>
        {
            entity.HasKey(e => e.OrderDetailsID).HasName("PK__RentalOr__9DD74D9D72C01B62");

            entity.Property(e => e.OrderDetailsID).ValueGeneratedNever();

            entity.HasOne(d => d.Order).WithMany(p => p.RentalOrderDetails).HasConstraintName("FK__RentalOrd__Order__68487DD7");

            entity.HasOne(d => d.Product).WithMany(p => p.RentalOrderDetails).HasConstraintName("FK__RentalOrd__Produ__693CA210");
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.RoleID).HasName("PK__Role__8AFACE3AFBE40BE6");

            entity.Property(e => e.RoleID).ValueGeneratedNever();
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.UserID).HasName("PK__User__1788CCAC2BF7ED25");

            entity.Property(e => e.UserID).ValueGeneratedNever();

            entity.HasMany(d => d.Roles).WithMany(p => p.Users)
                .UsingEntity<Dictionary<string, object>>(
                    "UserRole",
                    r => r.HasOne<Role>().WithMany()
                        .HasForeignKey("RoleID")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__UserRole__RoleID__656C112C"),
                    l => l.HasOne<User>().WithMany()
                        .HasForeignKey("UserID")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__UserRole__UserID__6477ECF3"),
                    j =>
                    {
                        j.HasKey("UserID", "RoleID").HasName("PK__UserRole__AF27604F6B863B4D");
                        j.ToTable("UserRole");
                    });
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}