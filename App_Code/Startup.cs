using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EWTAProjectGroupG.Startup))]
namespace EWTAProjectGroupG
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
