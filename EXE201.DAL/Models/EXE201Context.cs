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

    public virtual DbSet<Rating> Ratings { get; set; }

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
            entity.HasKey(e => e.AddressId).HasName("PK__Address__091C2A1BBB170CC2");

            entity.HasOne(d => d.User).WithMany(p => p.Addresses).HasConstraintName("FK__Address__UserID__76969D2E");
        });

        modelBuilder.Entity<Cart>(entity =>
        {
            entity.HasKey(e => e.CartId).HasName("PK__Cart__51BCD7975163131B");

            entity.HasOne(d => d.Product).WithMany(p => p.Carts).HasConstraintName("FK__Cart__ProductID__73BA3083");

            entity.HasOne(d => d.User).WithMany(p => p.Carts).HasConstraintName("FK__Cart__UserID__72C60C4A");
        });

        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.CategoryId).HasName("PK__Category__19093A2BDD9B801D");
        });

        modelBuilder.Entity<Feedback>(entity =>
        {
            entity.HasKey(e => e.FeedbackId).HasName("PK__Feedback__6A4BEDF65BA225F2");

            entity.HasOne(d => d.Product).WithMany(p => p.Feedbacks).HasConstraintName("FK__Feedback__Produc__6FE99F9F");

            entity.HasOne(d => d.User).WithMany(p => p.Feedbacks).HasConstraintName("FK__Feedback__UserID__6EF57B66");
        });

        modelBuilder.Entity<Inventory>(entity =>
        {
            entity.HasKey(e => e.InventoryId).HasName("PK__Inventor__F5FDE6D38026ABEC");

            entity.HasOne(d => d.Product).WithMany(p => p.Inventories).HasConstraintName("FK__Inventory__Produ__6C190EBB");
        });

        modelBuilder.Entity<Membership>(entity =>
        {
            entity.HasKey(e => e.MembershipId).HasName("PK__Membersh__92A7859999942137");

            entity.HasOne(d => d.MembershipType).WithMany(p => p.Memberships).HasConstraintName("FK__Membershi__Membe__75A278F5");

            entity.HasOne(d => d.User).WithMany(p => p.Memberships).HasConstraintName("FK__Membershi__UserI__74AE54BC");
        });

        modelBuilder.Entity<MembershipType>(entity =>
        {
            entity.HasKey(e => e.MembershipTypeId).HasName("PK__Membersh__F35A3E59118430E9");
        });

        modelBuilder.Entity<Notification>(entity =>
        {
            entity.HasKey(e => e.NotificationId).HasName("PK__Notifica__20CF2E3263C50A28");

            entity.HasOne(d => d.User).WithMany(p => p.Notifications).HasConstraintName("FK__Notificat__UserI__6E01572D");
        });

        modelBuilder.Entity<Payment>(entity =>
        {
            entity.HasKey(e => e.PaymentId).HasName("PK__Payment__9B556A58E706B189");

            entity.HasOne(d => d.Order).WithMany(p => p.Payments).HasConstraintName("FK__Payment__OrderID__6D0D32F4");

            entity.HasOne(d => d.PaymentUser).WithMany(p => p.Payments).HasConstraintName("FK__Payment__Payment__778AC167");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.ProductId).HasName("PK__Product__B40CC6ED45D98859");

            entity.HasOne(d => d.Category).WithMany(p => p.Products).HasConstraintName("FK__Product__Categor__68487DD7");
        });

        modelBuilder.Entity<Rating>(entity =>
        {
            entity.HasKey(e => e.RatingId).HasName("PK__Rating__FCCDF85C5471BBA8");

            entity.HasOne(d => d.Product).WithMany(p => p.Ratings).HasConstraintName("FK__Rating__ProductI__71D1E811");

            entity.HasOne(d => d.User).WithMany(p => p.Ratings).HasConstraintName("FK__Rating__UserID__70DDC3D8");
        });

        modelBuilder.Entity<RentalOrder>(entity =>
        {
            entity.HasKey(e => e.OrderId).HasName("PK__RentalOr__C3905BAF2E12BD2B");

            entity.HasOne(d => d.User).WithMany(p => p.RentalOrders).HasConstraintName("FK__RentalOrd__UserI__693CA210");
        });

        modelBuilder.Entity<RentalOrderDetail>(entity =>
        {
            entity.HasKey(e => e.OrderDetailsId).HasName("PK__RentalOr__9DD74D9DBE767CD7");

            entity.HasOne(d => d.Order).WithMany(p => p.RentalOrderDetails).HasConstraintName("FK__RentalOrd__Order__6A30C649");

            entity.HasOne(d => d.Product).WithMany(p => p.RentalOrderDetails).HasConstraintName("FK__RentalOrd__Produ__6B24EA82");
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.RoleId).HasName("PK__Role__8AFACE3AE5385EBD");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__User__1788CCAC7B0A9257");

            entity.HasMany(d => d.Roles).WithMany(p => p.Users)
                .UsingEntity<Dictionary<string, object>>(
                    "UserRole",
                    r => r.HasOne<Role>().WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__UserRole__RoleID__6754599E"),
                    l => l.HasOne<User>().WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__UserRole__UserID__66603565"),
                    j =>
                    {
                        j.HasKey("UserId", "RoleId").HasName("PK__UserRole__AF27604FA3C2CE9C");
                        j.ToTable("UserRole");
                        j.IndexerProperty<int>("UserId").HasColumnName("UserID");
                        j.IndexerProperty<int>("RoleId").HasColumnName("RoleID");
                    });
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}