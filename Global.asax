<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' 在应用程序启动时运行的代码
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' 在应用程序关闭时运行的代码
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' 在出现未处理的错误时运行的代码
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' 在新会话启动时运行的代码
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' 在会话结束时运行的代码。 
        ' 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
        ' InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer 
        ' 或 SQLServer，则不会引发该事件。
    End Sub
       
</script>