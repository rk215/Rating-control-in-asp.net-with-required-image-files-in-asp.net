Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim da As New DataSet
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("cn").ConnectionString)

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'Code for Get Rating value based on Enter textbox.
        cmd = New SqlCommand("select rt from rate where i=@i", con)
        cmd.Parameters.AddWithValue("@i", TextBox1.Text)
        con.Open()
        Dim rate As String = cmd.ExecuteScalar()
        Using dr As SqlDataReader = cmd.ExecuteReader()
            If dr.HasRows Then
                cmd = New SqlCommand("select * from rate", con)
                dr.Read()
                rate = dr("rt").ToString()
                dr.Close()
                cmd.ExecuteNonQuery()
                con.Close()
                Rating2.CurrentRating = rate
                Response.Write("See rating")
            Else
                Response.Write("This record not available.")
                Rating2.CurrentRating = 0
            End If
        End Using



    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Code for Store Rating value In Database.
        cmd = New SqlCommand("insert into rate values(@rate)", con)
        cmd.Parameters.AddWithValue("@rate", Rating1.CurrentRating)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("Rate is store in database ")
        Rating1.CurrentRating = 0



    End Sub
End Class
