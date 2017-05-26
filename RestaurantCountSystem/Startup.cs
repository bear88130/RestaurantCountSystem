using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RestaurantCountSystem.Startup))]
namespace RestaurantCountSystem
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
