; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CGL_OneView
LastTemplate=CStatusBarCtrl
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "GL_One.h"
LastPage=0

ClassCount=16
Class1=CGL_OneApp
Class2=CGL_OneDoc
Class3=CGL_OneView
Class4=CMainFrame

ResourceCount=20
Resource1=IDR_MAINFRAME
Resource2=IDD_COMP_DLG
Resource3=IDD_REPEAT_DIALOG (English (Canada))
Resource8=IDD_VIEW (English (U.S.))
Resource9=IDD_POLYGON (English (U.S.))
Resource10=IDD_OBJECTVIEW
Class5=CAboutDlg
Class6=CChildFrame
Resource4=IDD_SELECTION
Resource5=IDR_MAINFRAME (English (U.S.))
Resource6=IDR_GL_ONETYPE (English (U.S.))
Resource7=IDD_ABOUTBOX (English (U.S.))
Class7=CConstructionDialog
Class8=CPolygonDlg
Class9=CViewDialog
Class10=CCompositeDlg
Class11=CViewThread
Class12=CViewWnd
Class13=CSelectDialog
Resource11=IDD_CONSTRUCTION (English (U.S.))
Resource12=IDD_REPEAT_DIALOG
Class14=CRepeatDialog
Class15=CObjTreeDlg
Resource13=IDD_COMP_DLG (English (U.S.))
Resource14=IDD_POLYGON
Resource15=IDD_ABOUTBOX
Resource16=IDD_CONSTRUCTION
Resource17=IDD_VIEW
Resource18=IDR_GL_ONETYPE
Resource19=IDD_SELECTION (English (Canada))
Class16=CGLStatusBar
Resource20=IDD_OBJECTVIEW (English (Canada))

[CLS:CGL_OneApp]
Type=0
HeaderFile=GL_One.h
ImplementationFile=GL_One.cpp
Filter=N
LastObject=ID_VIEW_TOOLBAR
BaseClass=CWinApp
VirtualFilter=AC

[CLS:CGL_OneDoc]
Type=0
HeaderFile=GL_OneDoc.h
ImplementationFile=GL_OneDoc.cpp
Filter=N
LastObject=CGL_OneDoc

[CLS:CGL_OneView]
Type=0
HeaderFile=GL_OneView.h
ImplementationFile=GL_OneView.cpp
Filter=C
LastObject=ID_HELP_IMPLEMENTATIONINFO
BaseClass=CView
VirtualFilter=VWC

[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=T
LastObject=CMainFrame
BaseClass=CMDIFrameWnd
VirtualFilter=fWC


[CLS:CChildFrame]
Type=0
HeaderFile=ChildFrm.h
ImplementationFile=ChildFrm.cpp
Filter=M
BaseClass=CMDIChildWnd
VirtualFilter=mfWC
LastObject=CChildFrame

[CLS:CAboutDlg]
Type=0
HeaderFile=GL_One.cpp
ImplementationFile=GL_One.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[MNU:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_MRU_FILE1
Command4=ID_APP_EXIT
Command5=ID_VIEW_TOOLBAR
Command6=ID_VIEW_STATUS_BAR
Command7=ID_APP_ABOUT
CommandCount=7

[TB:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_CUT
Command5=ID_EDIT_COPY
Command6=ID_EDIT_PASTE
Command7=ID_FILE_PRINT
Command8=ID_APP_ABOUT
CommandCount=8

[MNU:IDR_GL_ONETYPE]
Type=1
Class=CGL_OneView
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_CLOSE
Command4=ID_FILE_SAVE
Command5=ID_FILE_SAVE_AS
Command6=ID_FILE_MRU_FILE1
Command7=ID_APP_EXIT
Command8=ID_EDIT_UNDO
Command9=ID_EDIT_CUT
Command10=ID_EDIT_COPY
Command11=ID_EDIT_PASTE
Command12=ID_EDIT_CLEARALL
Command13=ID_VIEW_TOOLBAR
Command14=ID_VIEW_STATUS_BAR
Command15=ID_VIEW_SETTINGS
Command16=ID_PRIMITIVES_POINTS
Command17=ID_PRIMITIVES_LINES
Command18=ID_PRIMITIVES_POLYGONS
Command19=ID_SOLIDS_BOX
Command20=ID_SOLIDS_CONE
Command21=ID_SOLIDS_DISK
Command22=ID_SOLIDS_SPHERE
Command23=ID_SOLIDS_TEAPOT
Command24=ID_SOLIDS_TORUS
Command25=ID_OBJECTS_NEW
Command26=ID_OBJECTS_LIST
Command27=ID_WINDOW_NEW
Command28=ID_WINDOW_CASCADE
Command29=ID_WINDOW_TILE_HORZ
Command30=ID_WINDOW_ARRANGE
Command31=ID_APP_ABOUT
Command32=ID_HELP_IMPLEMENTATIONINFO
CommandCount=32

[ACL:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_UNDO
Command5=ID_EDIT_CUT
Command6=ID_EDIT_COPY
Command7=ID_EDIT_PASTE
Command8=ID_EDIT_UNDO
Command9=ID_EDIT_CUT
Command10=ID_EDIT_COPY
Command11=ID_EDIT_PASTE
Command12=ID_NEXT_PANE
Command13=ID_PREV_PANE
CommandCount=13

[DLG:IDD_CONSTRUCTION (English (U.S.))]
Type=1
Class=CConstructionDialog
ControlCount=31
Control1=IDC_STATIC_RADIUS,static,1342308352
Control2=IDC_RADIUS,edit,1350631552
Control3=IDC_STATIC_SIZE,static,1342308352
Control4=IDC_SCALE,edit,1350631552
Control5=IDC_STATIC_WIDTH,static,1342308352
Control6=IDC_WIDTH,edit,1350631552
Control7=IDC_STATIC_HEIGHT,static,1342308352
Control8=IDC_HEIGHT,edit,1350631552
Control9=IDC_STATIC_DEPTH,static,1342308352
Control10=IDC_DEPTH,edit,1350631552
Control11=IDC_STATIC_IN_RADIUS,static,1342308352
Control12=IDC_IN_RADIUS,edit,1350631552
Control13=IDC_STATIC_OUT_RADIUS,static,1342308352
Control14=IDC_OUT_RADIUS,edit,1350631552
Control15=IDC_STATIC_TRANSX,static,1342308352
Control16=IDC_TRANSX,edit,1350631552
Control17=IDC_STATIC_TRANSY,static,1342308352
Control18=IDC_TRANSY,edit,1350631552
Control19=IDC_STATIC_TRANSZ,static,1342308352
Control20=IDC_TRANSZ,edit,1350631552
Control21=IDC_STATIC_ROTATEX,static,1342308352
Control22=IDC_ROTATE_X,edit,1350631552
Control23=IDC_STATIC_ROTATEY,static,1342308352
Control24=IDC_ROTATE_Y,edit,1350631552
Control25=IDC_STATIC_ROTATEZ,static,1342308352
Control26=IDC_ROTATE_Z,edit,1350631552
Control27=IDC_COLOR,button,1342242816
Control28=IDOK,button,1342242817
Control29=IDCANCEL,button,1342242816
Control30=IDC_STATIC,static,1342177294
Control31=IDC_EDIT_DESCRIPTOR,edit,1350631552

[TB:IDR_MAINFRAME (English (U.S.))]
Type=1
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_CUT
Command5=ID_EDIT_COPY
Command6=ID_EDIT_PASTE
Command7=ID_FILE_PRINT
Command8=ID_APP_ABOUT
CommandCount=8

[MNU:IDR_MAINFRAME (English (U.S.))]
Type=1
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_MRU_FILE1
Command4=ID_APP_EXIT
Command5=ID_VIEW_TOOLBAR
Command6=ID_VIEW_STATUS_BAR
Command7=ID_APP_ABOUT
CommandCount=7

[MNU:IDR_GL_ONETYPE (English (U.S.))]
Type=1
Class=CGL_OneView
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_CLOSE
Command4=ID_FILE_SAVE
Command5=ID_FILE_SAVE_AS
Command6=ID_FILE_MRU_FILE1
Command7=ID_APP_EXIT
Command8=ID_EDIT_UNDO
Command9=ID_EDIT_CUT
Command10=ID_EDIT_COPY
Command11=ID_EDIT_PASTE
Command12=ID_EDIT_CLEARALL
Command13=ID_VIEW_TOOLBAR
Command14=ID_VIEW_STATUS_BAR
Command15=ID_VIEW_SETTINGS
Command16=ID_PRIMITIVES_POINTS
Command17=ID_PRIMITIVES_LINES
Command18=ID_PRIMITIVES_POLYGONS
Command19=ID_SOLIDS_BOX
Command20=ID_SOLIDS_CONE
Command21=ID_SOLIDS_CUBE
Command22=ID_SOLIDS_CYLINDER
Command23=ID_SOLIDS_DODECAHEDRON
Command24=ID_SOLIDS_ICOSAHEDRON
Command25=ID_SOLIDS_OCTAHEDRON
Command26=ID_SOLIDS_SPHERE
Command27=ID_SOLIDS_TEAPOT
Command28=ID_SOLIDS_TETRAHEDRON
Command29=ID_SOLIDS_TORUS
Command30=ID_OBJECTS_NEW
Command31=ID_OBJECTS_LIST
Command32=ID_OBJECTS_FROMFILE
Command33=ID_WINDOW_NEW
Command34=ID_WINDOW_CASCADE
Command35=ID_WINDOW_TILE_HORZ
Command36=ID_WINDOW_ARRANGE
Command37=ID_APP_ABOUT
CommandCount=37

[ACL:IDR_MAINFRAME (English (U.S.))]
Type=1
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_UNDO
Command5=ID_EDIT_CUT
Command6=ID_EDIT_COPY
Command7=ID_EDIT_PASTE
Command8=ID_EDIT_UNDO
Command9=ID_EDIT_CUT
Command10=ID_EDIT_COPY
Command11=ID_EDIT_PASTE
Command12=ID_NEXT_PANE
Command13=ID_PREV_PANE
CommandCount=13

[DLG:IDD_ABOUTBOX (English (U.S.))]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_VIEW (English (U.S.))]
Type=1
ControlCount=27
Control1=IDC_EYEX,edit,1350631552
Control2=IDC_EYEY,edit,1350631552
Control3=IDC_EYEZ,edit,1350631552
Control4=IDC_FOV,edit,1350631552
Control5=IDC_NEAR_CLIP,edit,1350631552
Control6=IDC_FAR_CLIP,edit,1350631552
Control7=IDOK,button,1342242817
Control8=IDCANCEL,button,1342242816
Control9=IDC_STATIC,static,1342177294
Control10=IDC_STATIC,static,1342308352
Control11=IDC_STATIC,static,1342308352
Control12=IDC_STATIC,static,1342308352
Control13=IDC_STATIC,static,1342308352
Control14=IDC_STATIC,static,1342308352
Control15=IDC_STATIC,static,1342308352
Control16=IDC_STATIC,static,1342308352
Control17=IDC_STATIC,static,1342308352
Control18=IDC_STATIC,static,1342308352
Control19=IDC_STATIC,static,1342308352
Control20=IDC_STATIC,static,1342308352
Control21=IDC_STATIC,static,1342308352
Control22=IDC_CENTERX,edit,1350631552
Control23=IDC_CENTERY,edit,1350631552
Control24=IDC_CENTERZ,edit,1350631552
Control25=IDC_UPX,edit,1350631552
Control26=IDC_UPY,edit,1350631552
Control27=IDC_UPZ,edit,1350631552

[DLG:IDD_POLYGON (English (U.S.))]
Type=1
ControlCount=17
Control1=IDC_POINTS,edit,1350631552
Control2=IDC_DOUBLEX,edit,1350631552
Control3=IDC_DOUBLEY,edit,1350631552
Control4=IDC_DOUBLEZ,edit,1350631552
Control5=IDC_NEXT,button,1342242816
Control6=IDC_PREVIOUS,button,1342242816
Control7=IDOK,button,1342242817
Control8=IDCANCEL,button,1342242816
Control9=IDC_STATIC,static,1342308352
Control10=IDC_X,static,1342308352
Control11=IDC_Y,static,1342308352
Control12=IDC_Z,static,1342308352
Control13=IDC_STATIC,static,1342308352
Control14=IDC_STATIC,static,1342308352
Control15=IDC_EDIT5,edit,1350631552
Control16=IDC_CONVEX,button,1342177283
Control17=IDC_COLOR,button,1342242816

[DLG:IDD_COMP_DLG (English (U.S.))]
Type=1
Class=CCompositeDlg
ControlCount=30
Control1=IDC_EDIT_NAME,edit,1350631552
Control2=IDC_STATIC,static,1342312448
Control3=IDC_TYPE_LIST,listbox,1352729859
Control4=IDC_STATIC,static,1342308352
Control5=IDC_TRANS_X,edit,1350631552
Control6=IDC_STATIC,static,1342308352
Control7=IDC_TRANS_Y,edit,1350631552
Control8=IDC_STATIC,static,1342308352
Control9=IDC_TRANS_Z,edit,1350631552
Control10=IDC_STATIC,static,1342308352
Control11=IDC_ROTATE_X,edit,1350631552
Control12=IDC_STATIC,static,1342308352
Control13=IDC_ROTATE_Y,edit,1350631552
Control14=IDC_STATIC,static,1342308352
Control15=IDC_ROTATE_Z,edit,1350631552
Control16=IDC_STATIC,static,1342308352
Control17=IDC_SCALE_X,edit,1350631552
Control18=IDC_STATIC,static,1342308352
Control19=IDC_SCALE_Y,edit,1350631552
Control20=IDC_STATIC,static,1342308352
Control21=IDC_SCALE_Z,edit,1350631552
Control22=IDC_STATIC,static,1342312448
Control23=IDC_OBJ_LIST,listbox,1353778433
Control24=IDOK,button,1342242817
Control25=IDCANCEL,button,1342242816
Control26=IDC_IMPORT,button,1342242816
Control27=IDC_COPY,button,1342242816
Control28=IDC_STATIC,static,1342308352
Control29=IDC_ONE_COLOR,button,1342181385
Control30=IDC_COLOR,button,1342242816

[CLS:CConstructionDialog]
Type=0
HeaderFile=ConstructionDialog.h
ImplementationFile=ConstructionDialog.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_EDIT_DESCRIPTOR
VirtualFilter=dWC

[CLS:CPolygonDlg]
Type=0
HeaderFile=PolygonDlg.h
ImplementationFile=PolygonDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_COLOR

[CLS:CViewDialog]
Type=0
HeaderFile=ViewDialog.h
ImplementationFile=ViewDialog.cpp
BaseClass=CDialog
Filter=D
LastObject=CViewDialog

[CLS:CCompositeDlg]
Type=0
HeaderFile=CompositeDlg.h
ImplementationFile=CompositeDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_CLOSED_CHK
VirtualFilter=dWC

[CLS:CViewThread]
Type=0
HeaderFile=ViewThread.h
ImplementationFile=ViewThread.cpp
BaseClass=CWinThread
Filter=N
LastObject=CViewThread
VirtualFilter=TC

[CLS:CViewWnd]
Type=0
HeaderFile=viewwnd.h
ImplementationFile=viewwnd.cpp
BaseClass=CWnd
LastObject=CViewWnd
Filter=W
VirtualFilter=WC

[DLG:IDD_SELECTION]
Type=1
Class=CSelectDialog
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_HIT_LIST,listbox,1352728835
Control4=IDC_DELETE_BUTTON,button,1342242816
Control5=IDC_REPEAT_BTN,button,1342242816

[CLS:CSelectDialog]
Type=0
HeaderFile=SelectDialog.h
ImplementationFile=SelectDialog.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CSelectDialog

[DLG:IDD_REPEAT_DIALOG]
Type=1
Class=CRepeatDialog
ControlCount=10
Control1=IDC_EDIT_COPIES,edit,1350631552
Control2=IDC_EDIT_XOFF,edit,1350631552
Control3=IDC_EDIT_YOFF,edit,1350631552
Control4=IDC_EDIT_ZOFF,edit,1350631552
Control5=IDOK,button,1342242817
Control6=IDCANCEL,button,1342242816
Control7=IDC_STATIC_COPIES,static,1342308352
Control8=IDC_STATIC_XOFF,static,1342308352
Control9=IDC_STATIC_YOFF,static,1342308352
Control10=IDC_STATIC_ZOFF,static,1342308352

[CLS:CRepeatDialog]
Type=0
HeaderFile=RepeatDialog.h
ImplementationFile=RepeatDialog.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CRepeatDialog

[DLG:IDD_OBJECTVIEW]
Type=1
Class=CObjTreeDlg
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_OBJECT_TREE,SysTreeView32,1350631463
Control4=IDC_COPY_BUTTON,button,1342242816

[CLS:CObjTreeDlg]
Type=0
HeaderFile=ObjTreeDlg.h
ImplementationFile=ObjTreeDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CObjTreeDlg

[DLG:IDD_COMP_DLG]
Type=1
Class=CCompositeDlg
ControlCount=32
Control1=IDC_STATIC,static,1342308352
Control2=IDC_EDIT_NAME,edit,1350631552
Control3=IDC_STATIC,static,1342312448
Control4=IDC_TYPE_LIST,listbox,1352729859
Control5=IDC_STATIC,static,1342308352
Control6=IDC_TRANS_X,edit,1350631552
Control7=IDC_STATIC,static,1342308352
Control8=IDC_TRANS_Y,edit,1350631552
Control9=IDC_STATIC,static,1342308352
Control10=IDC_TRANS_Z,edit,1350631552
Control11=IDC_STATIC,static,1342308352
Control12=IDC_ROTATE_X,edit,1350631552
Control13=IDC_STATIC,static,1342308352
Control14=IDC_ROTATE_Y,edit,1350631552
Control15=IDC_STATIC,static,1342308352
Control16=IDC_ROTATE_Z,edit,1350631552
Control17=IDC_STATIC,static,1342308352
Control18=IDC_SCALE_X,edit,1350631552
Control19=IDC_STATIC,static,1342308352
Control20=IDC_SCALE_Y,edit,1350631552
Control21=IDC_STATIC,static,1342308352
Control22=IDC_SCALE_Z,edit,1350631552
Control23=IDC_STATIC,static,1342312448
Control24=IDC_OBJ_LIST,listbox,1353778433
Control25=IDOK,button,1342242817
Control26=IDCANCEL,button,1342242816
Control27=IDC_IMPORT,button,1342242816
Control28=IDC_COPY,button,1342242816
Control29=IDC_COLOR,button,1342242816
Control30=IDC_ONE_COLOR,button,1342242819
Control31=IDC_IS_A_CLIP,button,1342242819
Control32=IDC_DEFAULT_CHK,button,1342242819

[DLG:IDD_CONSTRUCTION]
Type=1
Class=CConstructionDialog
ControlCount=32
Control1=IDC_STATIC_RADIUS,static,1342308352
Control2=IDC_RADIUS,edit,1350631552
Control3=IDC_STATIC_SIZE,static,1342308352
Control4=IDC_SCALE,edit,1350631552
Control5=IDC_STATIC_WIDTH,static,1342308352
Control6=IDC_WIDTH,edit,1350631552
Control7=IDC_STATIC_HEIGHT,static,1342308352
Control8=IDC_HEIGHT,edit,1350631552
Control9=IDC_STATIC_DEPTH,static,1342308352
Control10=IDC_DEPTH,edit,1350631552
Control11=IDC_STATIC_IN_RADIUS,static,1342308352
Control12=IDC_IN_RADIUS,edit,1350631552
Control13=IDC_STATIC_OUT_RADIUS,static,1342308352
Control14=IDC_OUT_RADIUS,edit,1350631552
Control15=IDC_STATIC_TRANSX,static,1342308352
Control16=IDC_TRANSX,edit,1350631552
Control17=IDC_STATIC_TRANSY,static,1342308352
Control18=IDC_TRANSY,edit,1350631552
Control19=IDC_STATIC_TRANSZ,static,1342308352
Control20=IDC_TRANSZ,edit,1350631552
Control21=IDC_STATIC_ROTATEX,static,1342308352
Control22=IDC_ROTATE_X,edit,1350631552
Control23=IDC_STATIC_ROTATEY,static,1342308352
Control24=IDC_ROTATE_Y,edit,1350631552
Control25=IDC_STATIC_ROTATEZ,static,1342308352
Control26=IDC_ROTATE_Z,edit,1350631552
Control27=IDC_COLOR,button,1342242816
Control28=IDOK,button,1342242817
Control29=IDCANCEL,button,1342242816
Control30=IDC_STATIC,static,1342177294
Control31=IDC_EDIT_DESCRIPTOR,edit,1350631552
Control32=IDC_CLOSED_CHK,button,1342242819

[DLG:IDD_VIEW]
Type=1
Class=?
ControlCount=27
Control1=IDC_EYEX,edit,1350631552
Control2=IDC_EYEY,edit,1350631552
Control3=IDC_EYEZ,edit,1350631552
Control4=IDC_FOV,edit,1350631552
Control5=IDC_NEAR_CLIP,edit,1350631552
Control6=IDC_FAR_CLIP,edit,1350631552
Control7=IDOK,button,1342242817
Control8=IDCANCEL,button,1342242816
Control9=IDC_STATIC,static,1342177294
Control10=IDC_STATIC,static,1342308352
Control11=IDC_STATIC,static,1342308352
Control12=IDC_STATIC,static,1342308352
Control13=IDC_STATIC,static,1342308352
Control14=IDC_STATIC,static,1342308352
Control15=IDC_STATIC,static,1342308352
Control16=IDC_STATIC,static,1342308352
Control17=IDC_STATIC,static,1342308352
Control18=IDC_STATIC,static,1342308352
Control19=IDC_STATIC,static,1342308352
Control20=IDC_STATIC,static,1342308352
Control21=IDC_STATIC,static,1342308352
Control22=IDC_CENTERX,edit,1350631552
Control23=IDC_CENTERY,edit,1350631552
Control24=IDC_CENTERZ,edit,1350631552
Control25=IDC_UPX,edit,1350631552
Control26=IDC_UPY,edit,1350631552
Control27=IDC_UPZ,edit,1350631552

[DLG:IDD_POLYGON]
Type=1
Class=?
ControlCount=17
Control1=IDC_POINTS,edit,1350631552
Control2=IDC_DOUBLEX,edit,1350631552
Control3=IDC_DOUBLEY,edit,1350631552
Control4=IDC_DOUBLEZ,edit,1350631552
Control5=IDC_NEXT,button,1342242816
Control6=IDC_PREVIOUS,button,1342242816
Control7=IDOK,button,1342242817
Control8=IDCANCEL,button,1342242816
Control9=IDC_STATIC,static,1342308352
Control10=IDC_X,static,1342308352
Control11=IDC_Y,static,1342308352
Control12=IDC_Z,static,1342308352
Control13=IDC_STATIC,static,1342308352
Control14=IDC_STATIC,static,1342308352
Control15=IDC_EDIT5,edit,1350631552
Control16=IDC_CONVEX,button,1342177283
Control17=IDC_COLOR,button,1342242816

[DLG:IDD_SELECTION (English (Canada))]
Type=1
Class=?
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_HIT_LIST,listbox,1352728835
Control4=IDC_DELETE_BUTTON,button,1342242816
Control5=IDC_REPEAT_BTN,button,1342242816

[DLG:IDD_REPEAT_DIALOG (English (Canada))]
Type=1
Class=?
ControlCount=10
Control1=IDC_EDIT_COPIES,edit,1350631552
Control2=IDC_EDIT_XOFF,edit,1350631552
Control3=IDC_EDIT_YOFF,edit,1350631552
Control4=IDC_EDIT_ZOFF,edit,1350631552
Control5=IDOK,button,1342242817
Control6=IDCANCEL,button,1342242816
Control7=IDC_STATIC_COPIES,static,1342308352
Control8=IDC_STATIC_XOFF,static,1342308352
Control9=IDC_STATIC_YOFF,static,1342308352
Control10=IDC_STATIC_ZOFF,static,1342308352

[DLG:IDD_OBJECTVIEW (English (Canada))]
Type=1
Class=?
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_OBJECT_TREE,SysTreeView32,1350631463
Control4=IDC_COPY_BUTTON,button,1342242816

[CLS:CGLStatusBar]
Type=0
HeaderFile=GLStatusBar.h
ImplementationFile=GLStatusBar.cpp
BaseClass=CStatusBarCtrl
Filter=W
LastObject=CGLStatusBar
VirtualFilter=WC

