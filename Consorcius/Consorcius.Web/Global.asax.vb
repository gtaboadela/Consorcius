Imports System.Web.Optimization

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Fires when the application is started
        routeconfig.registerroutes(RouteTable.Routes)
        bundleconfig.registerbundles(BundleTable.Bundles)
    End Sub
End Class