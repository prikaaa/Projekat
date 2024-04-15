using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using WebApplication1.Models;

namespace WebApplication1.Logic
{
    public class RoleActions
    {
        internal void AddUserNRole()
        {

            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            var uloge = new RoleStore<IdentityRole>(context);

            var ulogeMgr = new RoleManager<IdentityRole>(uloge);

            if (!ulogeMgr.RoleExists("canEdit"))
            {
                IdRoleResult = ulogeMgr.Create(new IdentityRole { Name = "canEdit" });
            }
            var korisnikMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appKorisnik = new ApplicationUser
            {
                UserName = "admin123@delovi.com",
                Email = "admin123@delovi.com"
            };
            IdUserResult = korisnikMgr.Create(appKorisnik, "Delovi02!");

            if (!korisnikMgr.IsInRole(korisnikMgr.FindByEmail("admin123@delovi.com").Id, "canEdit"))
            {
                IdUserResult = korisnikMgr.AddToRole(korisnikMgr.FindByEmail("admin123@delovi.com").Id, "canEdit");
            }
        }
    }
}