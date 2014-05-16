# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=GL_One - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to GL_One - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "GL_One - Win32 Release" && "$(CFG)" != "GL_One - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "GL_One.mak" CFG="GL_One - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "GL_One - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "GL_One - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "GL_One - Win32 Debug"
RSC=rc.exe
MTL=mktyplib.exe
CPP=cl.exe

!IF  "$(CFG)" == "GL_One - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\GL_One.exe" "$(OUTDIR)\GL_One.pch"

CLEAN : 
	-@erase ".\Release\GL_One.pch"
	-@erase ".\Release\GL_One.exe"
	-@erase ".\Release\StdAfx.obj"
	-@erase ".\Release\GL_OneDoc.obj"
	-@erase ".\Release\RepeatDialog.obj"
	-@erase ".\Release\ObjTreeDlg.obj"
	-@erase ".\Release\GLArray.obj"
	-@erase ".\Release\MainFrm.obj"
	-@erase ".\Release\PolygonDlg.obj"
	-@erase ".\Release\tessel.obj"
	-@erase ".\Release\ConstructionDialog.obj"
	-@erase ".\Release\GLSolids.obj"
	-@erase ".\Release\SelectDialog.obj"
	-@erase ".\Release\GL_OneView.obj"
	-@erase ".\Release\GL_One.obj"
	-@erase ".\Release\ViewDialog.obj"
	-@erase ".\Release\ChildFrm.obj"
	-@erase ".\Release\CompositeDlg.obj"
	-@erase ".\Release\GL_One.res"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /c
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_MBCS" /Fp"$(INTDIR)/GL_One.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x1009 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "NDEBUG"
RSC_PROJ=/l 0x1009 /fo"$(INTDIR)/GL_One.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GL_One.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/GL_One.pdb" /machine:I386 /out:"$(OUTDIR)/GL_One.exe" 
LINK32_OBJS= \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/GL_OneDoc.obj" \
	"$(INTDIR)/RepeatDialog.obj" \
	"$(INTDIR)/ObjTreeDlg.obj" \
	"$(INTDIR)/GLArray.obj" \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/PolygonDlg.obj" \
	"$(INTDIR)/tessel.obj" \
	"$(INTDIR)/ConstructionDialog.obj" \
	"$(INTDIR)/GLSolids.obj" \
	"$(INTDIR)/SelectDialog.obj" \
	"$(INTDIR)/GL_OneView.obj" \
	"$(INTDIR)/GL_One.obj" \
	"$(INTDIR)/ViewDialog.obj" \
	"$(INTDIR)/ChildFrm.obj" \
	"$(INTDIR)/CompositeDlg.obj" \
	"$(INTDIR)/GL_One.res" \
	"..\..\..\LIB\OPENGL32.LIB" \
	"..\..\..\LIB\GLU32.LIB" \
	"..\..\..\LIB\GLAUX.LIB"

"$(OUTDIR)\GL_One.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\GL_One.exe" "$(OUTDIR)\GL_One.pch"

CLEAN : 
	-@erase ".\Debug\vc40.pdb"
	-@erase ".\Debug\vc40.idb"
	-@erase ".\Debug\GL_One.pch"
	-@erase ".\Debug\GL_One.exe"
	-@erase ".\Debug\CompositeDlg.obj"
	-@erase ".\Debug\GL_OneDoc.obj"
	-@erase ".\Debug\StdAfx.obj"
	-@erase ".\Debug\tessel.obj"
	-@erase ".\Debug\SelectDialog.obj"
	-@erase ".\Debug\GLArray.obj"
	-@erase ".\Debug\ObjTreeDlg.obj"
	-@erase ".\Debug\GLSolids.obj"
	-@erase ".\Debug\GL_OneView.obj"
	-@erase ".\Debug\MainFrm.obj"
	-@erase ".\Debug\GL_One.obj"
	-@erase ".\Debug\ChildFrm.obj"
	-@erase ".\Debug\ViewDialog.obj"
	-@erase ".\Debug\PolygonDlg.obj"
	-@erase ".\Debug\RepeatDialog.obj"
	-@erase ".\Debug\ConstructionDialog.obj"
	-@erase ".\Debug\GL_One.res"
	-@erase ".\Debug\GL_One.ilk"
	-@erase ".\Debug\GL_One.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/GL_One.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x1009 /fo"$(INTDIR)/GL_One.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GL_One.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/GL_One.pdb" /debug /machine:I386 /out:"$(OUTDIR)/GL_One.exe" 
LINK32_OBJS= \
	"$(INTDIR)/CompositeDlg.obj" \
	"$(INTDIR)/GL_OneDoc.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/tessel.obj" \
	"$(INTDIR)/SelectDialog.obj" \
	"$(INTDIR)/GLArray.obj" \
	"$(INTDIR)/ObjTreeDlg.obj" \
	"$(INTDIR)/GLSolids.obj" \
	"$(INTDIR)/GL_OneView.obj" \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/GL_One.obj" \
	"$(INTDIR)/ChildFrm.obj" \
	"$(INTDIR)/ViewDialog.obj" \
	"$(INTDIR)/PolygonDlg.obj" \
	"$(INTDIR)/RepeatDialog.obj" \
	"$(INTDIR)/ConstructionDialog.obj" \
	"$(INTDIR)/GL_One.res" \
	"..\..\..\LIB\OPENGL32.LIB" \
	"..\..\..\LIB\GLU32.LIB" \
	"..\..\..\LIB\GLAUX.LIB"

"$(OUTDIR)\GL_One.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "GL_One - Win32 Release"
# Name "GL_One - Win32 Debug"

!IF  "$(CFG)" == "GL_One - Win32 Release"

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\ReadMe.txt

!IF  "$(CFG)" == "GL_One - Win32 Release"

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GL_One.cpp
DEP_CPP_GL_ON=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\MainFrm.h"\
	".\ChildFrm.h"\
	".\GL_OneDoc.h"\
	".\GL_OneView.h"\
	".\GLSolids.h"\
	".\GLArray.h"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	

"$(INTDIR)\GL_One.obj" : $(SOURCE) $(DEP_CPP_GL_ON) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "GL_One - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS"\
 /Fp"$(INTDIR)/GL_One.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GL_One.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/GL_One.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GL_One.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MainFrm.cpp
DEP_CPP_MAINF=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\MainFrm.h"\
	

"$(INTDIR)\MainFrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ChildFrm.cpp
DEP_CPP_CHILD=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\ChildFrm.h"\
	

"$(INTDIR)\ChildFrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\GL_OneDoc.cpp
DEP_CPP_GL_ONE=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\GLSolids.h"\
	".\GL_OneDoc.h"\
	".\GL_OneView.h"\
	".\GLArray.h"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	

"$(INTDIR)\GL_OneDoc.obj" : $(SOURCE) $(DEP_CPP_GL_ONE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\GL_OneView.cpp
DEP_CPP_GL_ONEV=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\GL_OneDoc.h"\
	".\GL_OneView.h"\
	".\ConstructionDialog.h"\
	".\ViewDialog.h"\
	".\PolygonDlg.h"\
	".\GLSolids.h"\
	".\SelectDialog.h"\
	".\ObjTreeDlg.h"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	".\GLArray.h"\
	".\CompositeDlg.h"\
	

"$(INTDIR)\GL_OneView.obj" : $(SOURCE) $(DEP_CPP_GL_ONEV) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\GL_One.rc
DEP_RSC_GL_ONE_=\
	".\res\GLOneDoc.ico"\
	".\res\Toolbar.bmp"\
	".\res\axisicon.bmp"\
	".\res\GL_One.ico"\
	".\res\bitmap1.bmp"\
	".\res\GL_One.rc2"\
	

"$(INTDIR)\GL_One.res" : $(SOURCE) $(DEP_RSC_GL_ONE_) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ConstructionDialog.cpp
DEP_CPP_CONST=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\ConstructionDialog.h"\
	

"$(INTDIR)\ConstructionDialog.obj" : $(SOURCE) $(DEP_CPP_CONST) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\PolygonDlg.cpp
DEP_CPP_POLYG=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\PolygonDlg.h"\
	

"$(INTDIR)\PolygonDlg.obj" : $(SOURCE) $(DEP_CPP_POLYG) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ViewDialog.cpp
DEP_CPP_VIEWD=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\ViewDialog.h"\
	

"$(INTDIR)\ViewDialog.obj" : $(SOURCE) $(DEP_CPP_VIEWD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\CompositeDlg.cpp
DEP_CPP_COMPO=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\CompositeDlg.h"\
	".\GLSolids.h"\
	".\RepeatDialog.h"\
	".\ObjTreeDlg.h"\
	".\GL_OneView.h"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	".\GL_OneDoc.h"\
	".\GLArray.h"\
	

"$(INTDIR)\CompositeDlg.obj" : $(SOURCE) $(DEP_CPP_COMPO) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\tessel.c
DEP_CPP_TESSE=\
	".\TESSEL.H"\
	".\GLOS.H"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	

"$(INTDIR)\tessel.obj" : $(SOURCE) $(DEP_CPP_TESSE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\GLSolids.cpp

!IF  "$(CFG)" == "GL_One - Win32 Release"

DEP_CPP_GLSOL=\
	".\StdAfx.h"\
	".\GL_OneDoc.h"\
	".\GLSolids.h"\
	".\GLArray.h"\
	".\ConstructionDialog.h"\
	".\CompositeDlg.h"\
	".\PolygonDlg.h"\
	".\GLOS.H"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	".\GL_OneView.h"\
	

"$(INTDIR)\GLSolids.obj" : $(SOURCE) $(DEP_CPP_GLSOL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

DEP_CPP_GLSOL=\
	".\StdAfx.h"\
	".\GL_OneDoc.h"\
	".\GLSolids.h"\
	".\GLArray.h"\
	".\ConstructionDialog.h"\
	".\CompositeDlg.h"\
	".\PolygonDlg.h"\
	".\GLOS.H"\
	".\GL_OneView.h"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	

"$(INTDIR)\GLSolids.obj" : $(SOURCE) $(DEP_CPP_GLSOL) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GLArray.cpp
DEP_CPP_GLARR=\
	".\StdAfx.h"\
	".\GLArray.h"\
	

"$(INTDIR)\GLArray.obj" : $(SOURCE) $(DEP_CPP_GLARR) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\SelectDialog.cpp
DEP_CPP_SELEC=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\SelectDialog.h"\
	".\RepeatDialog.h"\
	".\GLSolids.h"\
	".\GL_OneView.h"\
	".\GLArray.h"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	".\GL_OneDoc.h"\
	

"$(INTDIR)\SelectDialog.obj" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=\MSDEV\LIB\OPENGL32.LIB

!IF  "$(CFG)" == "GL_One - Win32 Release"

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\MSDEV\LIB\GLU32.LIB

!IF  "$(CFG)" == "GL_One - Win32 Release"

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\MSDEV\LIB\GLAUX.LIB

!IF  "$(CFG)" == "GL_One - Win32 Release"

!ELSEIF  "$(CFG)" == "GL_One - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RepeatDialog.cpp
DEP_CPP_REPEA=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\RepeatDialog.h"\
	

"$(INTDIR)\RepeatDialog.obj" : $(SOURCE) $(DEP_CPP_REPEA) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ObjTreeDlg.cpp
DEP_CPP_OBJTR=\
	".\StdAfx.h"\
	".\GL_One.h"\
	".\ObjTreeDlg.h"\
	".\RepeatDialog.h"\
	".\GL_OneView.h"\
	".\GL_OneDoc.h"\
	".\CompositeDlg.h"\
	".\GLSolids.h"\
	".\GLArray.h"\
	{$(INCLUDE)}"\gl\GL.H"\
	{$(INCLUDE)}"\gl\GLU.H"\
	{$(INCLUDE)}"\gl\GLAUX.H"\
	

"$(INTDIR)\ObjTreeDlg.obj" : $(SOURCE) $(DEP_CPP_OBJTR) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
################################################################################
# Section GL_One : {749289EE-93AD-11D1-B978-000000000000}
# 	1:17:ID_INDICATOR_TIME:103
# 	2:2:BH:
# 	2:17:ID_INDICATOR_TIME:ID_INDICATOR_TIME
# End Section
################################################################################
################################################################################
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
################################################################################
