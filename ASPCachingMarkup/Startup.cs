using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPCachingMarkup.Startup))]
namespace ASPCachingMarkup
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
