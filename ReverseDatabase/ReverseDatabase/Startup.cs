using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ReverseDatabase.Startup))]
namespace ReverseDatabase
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
