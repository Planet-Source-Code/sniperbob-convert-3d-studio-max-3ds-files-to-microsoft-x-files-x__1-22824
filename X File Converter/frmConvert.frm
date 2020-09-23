VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmConvert 
   BorderStyle     =   1  'Fixed Single
   Caption         =   """3D Studio Max""   to   ""X File""   Converter"
   ClientHeight    =   6375
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7335
   Icon            =   "frmConvert.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6375
   ScaleWidth      =   7335
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog cd3ds 
      Left            =   6720
      Top             =   840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
      DialogTitle     =   "Select a 3ds file to convert..."
      Filter          =   "3D Studio Max Files (*.3ds)|*.3ds"
      InitDir         =   "c:\"
   End
   Begin VB.CommandButton cmd3ds 
      Caption         =   "Select 3ds File"
      Height          =   495
      Left            =   5520
      TabIndex        =   22
      Top             =   480
      Width           =   1215
   End
   Begin VB.Frame fmeFile 
      Caption         =   "3ds File to Convert:"
      Height          =   1095
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   4815
      Begin VB.TextBox txtInputPath 
         Height          =   495
         Left            =   240
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   23
         Top             =   360
         Width           =   4335
      End
   End
   Begin VB.Frame fmeOptions 
      Caption         =   "Options"
      Height          =   4095
      Left            =   120
      TabIndex        =   2
      Top             =   1440
      Width           =   7095
      Begin VB.CheckBox chkHiearchy 
         Caption         =   "Tell the converter not to try to resolve any hiearchy information in the 3ds file"
         Height          =   375
         Left            =   3600
         TabIndex        =   18
         Top             =   3360
         Width           =   3375
      End
      Begin VB.CheckBox chkTransform 
         Caption         =   "X file produced should not contain any FrameTransformMatrix"
         Height          =   375
         Left            =   3600
         TabIndex        =   17
         Top             =   2880
         Width           =   3375
      End
      Begin VB.Frame fmeScaling 
         Caption         =   "Scaling"
         Height          =   1815
         Left            =   3720
         TabIndex        =   13
         Top             =   360
         Width           =   3015
         Begin VB.TextBox txtScale 
            Alignment       =   2  'Center
            Height          =   285
            Left            =   1080
            MaxLength       =   6
            TabIndex        =   14
            Text            =   "0"
            Top             =   480
            Width           =   735
         End
         Begin VB.Label lblScaleInfo 
            Alignment       =   2  'Center
            Caption         =   $"frmConvert.frx":0442
            Height          =   855
            Left            =   120
            TabIndex        =   16
            Top             =   840
            Width           =   2775
         End
         Begin VB.Label lblScaleBy 
            Alignment       =   2  'Center
            Caption         =   "Scale factor:"
            Height          =   255
            Left            =   120
            TabIndex        =   15
            Top             =   240
            Width           =   2775
         End
      End
      Begin VB.CheckBox chkCoordinates 
         Caption         =   "X file produced should not contain texture coordinates"
         Height          =   375
         Left            =   3600
         TabIndex        =   12
         Top             =   2400
         Width           =   3375
      End
      Begin VB.CheckBox chkNormals 
         Caption         =   "X file produced will not contain Normals"
         Height          =   375
         Left            =   120
         TabIndex        =   11
         Top             =   3600
         Width           =   3375
      End
      Begin VB.CheckBox chkTexture 
         Caption         =   "X File produced will not contain texture information"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   3120
         Width           =   3375
      End
      Begin VB.CheckBox chkTemplates 
         Caption         =   "Include the D3DRM X File templates in the file"
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   2640
         Width           =   3375
      End
      Begin VB.CheckBox chkText 
         Caption         =   "Produce Text File instead of Binary (Larger, but can be hand edited)"
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   2160
         Width           =   3375
      End
      Begin VB.CheckBox chkReverse 
         Caption         =   "Reverse winding order (create inside-out mesh)"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   1200
         Width           =   3375
      End
      Begin VB.CheckBox chkTop 
         Caption         =   "Wrap all the objects and frame hierarchies in a single ""toplevel"" frame."
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   1680
         Width           =   3375
      End
      Begin VB.CheckBox chkMesh 
         Caption         =   "Create a single mesh made from all the objects in the 3ds File"
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Value           =   1  'Checked
         Width           =   3375
      End
      Begin VB.CheckBox chkAni 
         Caption         =   "The 3ds File contains keyframe data, produce an animation set"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   720
         Width           =   3375
      End
   End
   Begin VB.CommandButton cmdViewDoc 
      Caption         =   "View conv3ds Documentation"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   5760
      Width           =   1455
   End
   Begin VB.CommandButton cmdCreate 
      Caption         =   "Create the X File"
      Height          =   495
      Left            =   5760
      TabIndex        =   0
      Top             =   5760
      Width           =   1455
   End
   Begin VB.Label lblAbout3 
      Caption         =   "Brandon Bloom"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   4080
      TabIndex        =   21
      Top             =   5640
      Width           =   1455
   End
   Begin VB.Label About2 
      Alignment       =   2  'Center
      Caption         =   "Thanks to Microsoft for conv3ds and their amazing work on DirectX"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   20
      Top             =   5880
      Width           =   4215
   End
   Begin VB.Label lblAbout1 
      Alignment       =   2  'Center
      Caption         =   "This Helper Program By:                        "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   1560
      TabIndex        =   19
      Top             =   5640
      Width           =   4215
   End
End
Attribute VB_Name = "frmConvert"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Supported Commands
' Command  Parameters   Description
'   -m                  Create a single mesh from everything in the 3ds file
'   -A                  Contains animations
'   -r                  Reverse winding of vertices... make mesh insideout
'   -T                  Create top level frame
'   -s       Single     Scale by value set in parameter (ex: -s10 or -s0.5)
'   -x                  Output a Text file instead of Binary
'   -X                  Include the D3DRM X File templates in the file
'   -t                  X File produced will not contain texture information
'   -N                  X file produced will not contain Normal Information
'   -c                  X file produced should not contain texture coordinates
'   -f                  X file produced should not contain any FrameTransformMatrix
'   -h                  Tells the converter not to try to resolve any hiearchy information in the 3ds file
'   -o                  Specify the output name for the x file
'
'UNSUPPORTED Commands
' Command  Parameters   Description
'   -v  Integer (0to3)  Returns verbose output from the converter
'   -e   3 Chr string   Allows you to change the extension for texture map files. (Ex: -e"ppm")
'   -z  Single (0to1)   Combinded with -Z to adjust alpha
'   -Z  Single (0to1)   Combinded with -z to adjust alpha       EX:
                                                                    '   conv3ds -z0.1 -Z0.2 file.3ds
                                                                    '   says add 0.1 to all alpha values under 0.2.   And
                                                                    '
                                                                    '   conv3ds-z"-0.2" -z1 file.3ds
                                                                    '   says subtract 0.2 from the alpha values for all alphas.


'VIEW THE HELP FILE
Private Sub cmdViewDoc_Click()
    Dim HelpPath As String
    Let HelpPath = App.Path & "\conv3ds.txt"
    
    If Dir(HelpPath) <> "" Then
        'Start the file
        Shell "notepad " & HelpPath, vbNormalFocus
    Else
        'If the file doesn't exist then warn user
        MsgBox "The conv3ds.txt file is missing." & Chr(13) & Chr(13) & _
        "It should be located in:" & Chr(13) & _
        App.Path & "\"
    End If
    
End Sub

'Select a 3ds File
Private Sub cmd3ds_Click()
On Error GoTo Select3ds_Cancled
    
    cd3ds.ShowOpen
    Let txtInputPath.Text = cd3ds.FileName
    
Select3ds_Cancled:
End Sub

'Limit keys in the scale factor text box
Private Sub txtScale_KeyPress(KeyAscii As Integer)
    'Allow backspace
    If KeyAscii = 8 Then Exit Sub
    'Allow decimal
    If KeyAscii = 46 Then Exit Sub
    'Eliminate all ather charactors except numbers
    If Not IsNumeric(Chr(KeyAscii)) Then Let KeyAscii = 0
End Sub

Private Sub txtScale_LostFocus()
    If txtScale.Text = "" Or txtScale.Text = "0" Then
        Let txtScale.Text = "0"
        Exit Sub
    End If
    If Val(txtScale.Text) < 1 And Left(txtScale.Text, 1) <> "0" Then Let txtScale.Text = "0" & txtScale.Text
End Sub






'Main Command: Shell with all the options and such
Private Sub cmdCreate_Click()

    'make sure there is a selected input file
    If txtInputPath.Text = "" Then
        MsgBox "You forgot to select a 3ds File to be converted", , "Oops"
        Exit Sub
    End If

    Dim conv3dsPath As String
    Let conv3dsPath = App.Path & "\conv3ds.exe"
    
    If Dir(conv3dsPath) <> "" Then
    
        'setup parameters
        Dim Parameters As String
        If chkMesh.Value = Checked Then Let Parameters = Parameters & "-m "
        If chkAni.Value = Checked Then Let Parameters = Parameters & "-A "
        If chkReverse.Value = Checked Then Let Parameters = Parameters & "-r "
        If chkTop.Value = Checked Then Let Parameters = Parameters & "-T "
        If txtScale.Text <> 0 Then Let Parameters = Parameters & "-s" & txtScale.Text & " "
        If chkText.Value = Checked Then Let Parameters = Parameters & "-x "
        If chkTemplates.Value = Checked Then Let Parameters = Parameters & "-X "
        If chkTexture.Value = Checked Then Let Parameters = Parameters & "-t "
        If chkNormals.Value = Checked Then Let Parameters = Parameters & "-N "
        If chkCoordinates.Value = Checked Then Let Parameters = Parameters & "-c "
        If chkTransform.Value = Checked Then Let Parameters = Parameters & "-f "
        If chkHiearchy.Value = Checked Then Let Parameters = Parameters & "-h "
        
        'CONVERT!
        Dim CommandLine As String
        Let CommandLine = conv3dsPath & " " & Parameters & txtInputPath.Text
        MsgBox "When you press 'OK' a dos window should appear. This is conv3ds.exe" & Chr(13) & _
               "When conv3ds terminates your X File should be available in the same directory as the 3ds File.", vbInformation, ""
        Shell CommandLine, vbNormalFocus
        
    Else
        'If the file doesn't exist then warn user
        MsgBox "The conv3ds.exe file is missing." & Chr(13) & Chr(13) & _
        "It should be located in:" & Chr(13) & _
        App.Path & "\"
    End If
    
End Sub
