# Microsoft Developer Studio Project File - Name="GL_One" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=GL_One - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "GL_One.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "GL_One.mak" CFG="GL_One - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "GL_One - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "GL_One - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "GL_One - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386

!ENDIF 

# Begin Target

# Name "GL_One - Win32 Release"
# Name "GL_One - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\ChildFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\CompositeDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\ConstructionDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\GL_One.cpp
# End Source File
# Begin Source File

SOURCE=.\GL_One.rc
# End Source File
# Begin Source File

SOURCE=.\GL_OneDoc.cpp
# End Source File
# Begin Source File

SOURCE=.\GL_OneView.cpp
# End Source File
# Begin Source File

SOURCE=.\GLArray.cpp
# End Source File
# Begin Source File

SOURCE=.\GLSolids.cpp
# End Source File
# Begin Source File

SOURCE=.\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\ObjTreeDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\PolygonDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# Begin Source File

SOURCE=.\RepeatDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\SelectDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\tessel.c
# End Source File
# Begin Source File

SOURCE=.\ViewDialog.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\ChildFrm.h
# End Source File
# Begin Source File

SOURCE=.\CompositeDlg.h
# End Source File
# Begin Source File

SOURCE=.\ConstructionDialog.h
# End Source File
# Begin Source File

SOURCE=.\GL_One.h
# End Source File
# Begin Source File

SOURCE=.\GL_OneDoc.h
# End Source File
# Begin Source File

SOURCE=.\GL_OneView.h
# End Source File
# Begin Source File

SOURCE=.\GLArray.h
# End Source File
# Begin Source File

SOURCE=.\GLOS.H
# End Source File
# Begin Source File

SOURCE=.\GLSolids.h
# End Source File
# Begin Source File

SOURCE=.\MainFrm.h
# End Source File
# Begin Source File

SOURCE=.\ObjTreeDlg.h
# End Source File
# Begin Source File

SOURCE=.\PolygonDlg.h
# End Source File
# Begin Source File

SOURCE=.\RepeatDialog.h
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=.\SelectDialog.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\TESSEL.H
# End Source File
# Begin Source File

SOURCE=.\ViewDialog.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\axisicon.bmp
# End Source File
# Begin Source File

SOURCE=.\res\bitmap1.bmp
# End Source File
# Begin Source File

SOURCE=.\res\GL_One.ico
# End Source File
# Begin Source File

SOURCE=.\res\GL_One.rc2
# End Source File
# Begin Source File

SOURCE=.\res\GLOneDoc.ico
# End Source File
# Begin Source File

SOURCE=.\res\Toolbar.bmp
# End Source File
# End Group
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\Lib\OPENGL32.LIB"
# End Source File
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\Lib\GLAUX.LIB"
# End Source File
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\Lib\GLU32.LIB"
# End Source File
# End Target
# End Project
# Section GL_One : {89AC0195-83D6-11D1-8397-CDF11625EE21}
# 	0:12:ObjTreeDlg.h:F:\MSDEV\Projects\MDI\GL_One\ObjTreeDlg.h
# 	0:14:ObjTreeDlg.cpp:F:\MSDEV\Projects\MDI\GL_One\ObjTreeDlg.cpp
# 	1:14:IDD_OBJECTVIEW:102
# 	2:16:Resource Include:resource.h
# 	2:18:CLASS: CObjTreeDlg:CObjTreeDlg
# 	2:10:ENUM: enum:enum
# 	2:12:ObjTreeDlg.h:ObjTreeDlg.h
# 	2:14:ObjTreeDlg.cpp:ObjTreeDlg.cpp
# 	2:14:IDD_OBJECTVIEW:IDD_OBJECTVIEW
# 	2:19:Application Include:GL_One.h
# End Section
# Section GL_One : {749289EE-93AD-11D1-B978-000000000000}
# 	1:17:ID_INDICATOR_TIME:103
# 	2:2:BH:
# 	2:17:ID_INDICATOR_TIME:ID_INDICATOR_TIME
# End Section
