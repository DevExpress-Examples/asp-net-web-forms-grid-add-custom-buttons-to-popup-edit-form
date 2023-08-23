Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub buttonPrev_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim button As ASPxButton = TryCast(sender, ASPxButton)
		Dim container As GridViewDataItemTemplateContainer = TryCast(button.NamingContainer, GridViewDataItemTemplateContainer)
		button.ClientSideEvents.Click = String.Format("function(s, e){{ gridView.StartEditRow({0}-1); }}", container.VisibleIndex)
	End Sub
	Protected Sub buttonNext_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim button As ASPxButton = TryCast(sender, ASPxButton)
		Dim container As GridViewDataItemTemplateContainer = TryCast(button.NamingContainer, GridViewDataItemTemplateContainer)
		button.ClientSideEvents.Click = String.Format("function(s, e){{ gridView.StartEditRow({0}+1); }}", container.VisibleIndex)
	End Sub
End Class
