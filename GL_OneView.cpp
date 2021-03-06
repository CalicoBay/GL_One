// GL_OneView.cpp : implementation of the CGL_OneView class
//

#include "stdafx.h"
#include "GL_One.h"

#include "GL_OneDoc.h"
#include "GL_OneView.h"
#include "ConstructionDialog.h"
#include "ViewDialog.h"
#include "PolygonDlg.h"
#include "GLSolids.h"
#include "SelectDialog.h"
#include "ObjTreeDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif



class CGLObjects;
/////////////////////////////////////////////////////////////////////////////
// CGL_OneView

IMPLEMENT_SERIAL(CGL_OneView, CView, 0)

BEGIN_MESSAGE_MAP(CGL_OneView, CView)
	ON_UPDATE_COMMAND_UI(ID_INDICATOR_FOV, OnUpdateFoV)
	ON_UPDATE_COMMAND_UI(ID_INDICATOR_LOOK_FROM, OnUpdateLookFrom)
	ON_UPDATE_COMMAND_UI(ID_INDICATOR_LOOK_AT, OnUpdateLookAt)
	ON_UPDATE_COMMAND_UI(ID_INDICATOR_CLIP, OnUpdateNearFar)
	//{{AFX_MSG_MAP(CGL_OneView)
	ON_COMMAND(ID_EDIT_CLEARALL, OnEditClearall)
	ON_COMMAND(ID_PRIMITIVES_POLYGONS, OnPrimitivesPolygons)
	ON_COMMAND(ID_SOLIDS_BOX, OnSolidsBox)
	ON_COMMAND(ID_SOLIDS_CONE, OnSolidsCone)
	ON_COMMAND(ID_SOLIDS_SPHERE, OnSolidsSphere)
	ON_COMMAND(ID_SOLIDS_TEAPOT, OnSolidsTeapot)
	ON_COMMAND(ID_SOLIDS_TORUS, OnSolidsTorus)
	ON_COMMAND(ID_VIEW_SETTINGS, OnViewSettings)
	ON_WM_CREATE()
	ON_WM_RBUTTONDOWN()
	ON_WM_DESTROY()
	ON_WM_SIZE()
	ON_COMMAND(ID_OBJECTS_NEW, OnObjectsNew)
	ON_COMMAND(ID_OBJECTS_LIST, OnObjectsList)
	ON_COMMAND(ID_SOLIDS_DISK, OnSolidsDisk)
	ON_WM_KEYUP()
	ON_WM_KEYDOWN()
	ON_COMMAND(ID_HELP_IMPLEMENTATIONINFO, OnHelpImplementationInfo)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGL_OneView construction/destruction
CGL_OneView::CGL_OneView()
{
	m_bDirty = TRUE;
}

CGL_OneView::~CGL_OneView()
{
}

/////////////////////////////////////////////////////////////////////////////
// CGL_OneView drawing

void CGL_OneView::OnDraw(CDC* pDC)
{
	AfxBeginThread(CGL_OneView::ThreadDraw, (LPVOID)this);
}

UINT CGL_OneView::ThreadDraw(LPVOID pParam)
{
	CGL_OneView* pView = (CGL_OneView*)pParam;

    if (pView == NULL ||
        !pView->IsKindOf(RUNTIME_CLASS(CGL_OneView)))
	{
		AfxMessageBox(_T("Thread returned 0"));
		return 0;	// illegal parameter
	}
	wglMakeCurrent(pView->GetDC()->m_hDC, pView->m_hRC);	
	GLint position_lt_0[] = {10, 10, 10, 0}, ambient_lt_0[] = {1, 1, 1, 1};
	pView->ChangeCamera();

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
	glPolygonMode(pView->m_poly_face, pView->m_poly_mode);
	glEnable(GL_COLOR_MATERIAL);
	glLightiv(GL_LIGHT0, GL_POSITION, position_lt_0);
	glLightiv(GL_LIGHT0, GL_AMBIENT, ambient_lt_0);
	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	if (pView->m_bDirty)
	{
		glNewList((GLuint)pView, GL_COMPILE_AND_EXECUTE);
			pView->GetDocument()->Draw(GL_RENDER);
		glEndList();
		pView->m_bDirty = FALSE;
	}
	else
		glCallList((GLuint)pView);
	wglMakeCurrent(NULL, NULL);
	return 1;
}
UINT CGL_OneView::ThreadObjectDraw(LPVOID pParam)
{
	if(NULL == pParam)
   {
      ::AfxMessageBox(_T("ThreadObjectDraw pParam is NULL"));
      return 0;
   }

   PDRAWPARAMETERS pDrawParams = (PDRAWPARAMETERS)pParam;
   if((NULL == pDrawParams->pView) || (!pDrawParams->pView->IsKindOf(RUNTIME_CLASS(CGL_OneView))))
	{
		AfxMessageBox(_T("Thread returned 0"));
		return 0;	// illegal parameter
	}
	wglMakeCurrent(pDrawParams->pView->GetDC()->m_hDC, pDrawParams->pView->m_hRC);
	pDrawParams->pGLObject->Draw(GL_RENDER);
	wglMakeCurrent(NULL, NULL);
   delete pParam;
	return 1;
}
/////////////////////////////////////////////////////////////////////////////
// CGL_OneView diagnostics

#ifdef _DEBUG
void CGL_OneView::AssertValid() const
{
	CView::AssertValid();
}

void CGL_OneView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CGL_OneDoc* CGL_OneView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CGL_OneDoc)));
	return (CGL_OneDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CGL_OneView message handlers
void CGL_OneView::OnObjectsNew() 
{
	GLubyte color[3] = {1, 1, 1};
	GLdouble transform[3] = {0, 0, 0}, rotation[3] = {0, 0, 0}, scale[3] = {1, 1, 1};
	CGLObjects* pGLObject = new CGLComp(color, transform, rotation, scale);
	
	if(NULL != pGLObject)
	{
		pGLObject->SetDocument(GetDocument());
		pGLObject->SetColorIsDifferent(FALSE);
		if(IDOK != pGLObject->Change())
		{
			delete pGLObject;
			return;
		}
		m_bDirty = TRUE;
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
	}
}

void CGL_OneView::OnPrimitivesPolygons() 
{
	CGLObjects* pGLObject = CGLPolygon::Make();
	if (pGLObject)
	{
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
		m_bDirty = TRUE;
	}
}

void CGL_OneView::OnSolidsBox() 
{
	CGLObjects* pGLObject = CGLBox::Make();
	if(NULL != pGLObject)
	{
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
		m_bDirty = TRUE;
	}
}

void CGL_OneView::OnSolidsCone() 
{
	CGLObjects* pGLObject = CGLCone::Make();
	if(NULL != pGLObject)
	{
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
		m_bDirty = TRUE;
	}
}

void CGL_OneView::OnSolidsDisk() 
{
	CGLObjects* pGLObject = CGLDisk::Make();
	if(NULL != pGLObject)
	{
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
		m_bDirty = TRUE;
	}	
}
/*
void CGL_OneView::OnSolidsCylinder() 
{
	CConstructionDialog dlg;
	dlg.type_of_solid = (CConstructionDialog::Solids)4;
	INT_PTR response = dlg.DoModal();	
}

void CGL_OneView::OnSolidsDodecahedron() 
{
	CConstructionDialog dlg;
	dlg.type_of_solid = (CConstructionDialog::Solids)5;
	INT_PTR response = dlg.DoModal();
}

void CGL_OneView::OnSolidsIcosahedron() 
{
	CConstructionDialog dlg;
	dlg.type_of_solid = (CConstructionDialog::Solids)6;
	INT_PTR response = dlg.DoModal();
}

void CGL_OneView::OnSolidsOctahedron() 
{
	CConstructionDialog dlg;
	dlg.type_of_solid = (CConstructionDialog::Solids)7;
	INT_PTR response = dlg.DoModal();
}*/

void CGL_OneView::OnSolidsSphere() 
{
	CGLObjects* pGLObject = CGLSphere::Make();
	if(NULL != pGLObject)
	{
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
		m_bDirty = TRUE;
	}
}

void CGL_OneView::OnSolidsTeapot() 
{
	CGLObjects* pGLObject = CGLTeapot::Make();
	if(NULL != pGLObject)
	{
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
		m_bDirty = TRUE;
	}
}

/*void CGL_OneView::OnSolidsTetrahedron() 
{
	CConstructionDialog dlg;
	dlg.type_of_solid = (CConstructionDialog::Solids)10;
	INT_PTR response = dlg.DoModal();
}*/

void CGL_OneView::OnSolidsTorus() 
{
	CGLObjects* pGLObject = CGLTorus::Make();
	if(NULL != pGLObject)
	{
		PDRAWPARAMETERS pDrawParams = new DRAWPARAMETERS;
      if(NULL != pDrawParams)
      {
         pDrawParams->pView = this;
		   pDrawParams->pGLObject = pGLObject;

		   GetDocument()->Add(pGLObject);
		   AfxBeginThread(CGL_OneView::ThreadObjectDraw, (LPVOID)pDrawParams);
      }
		m_bDirty = TRUE;
	}
}



void CGL_OneView::OnDestroy() 
{
	CView::OnDestroy();
	wglDeleteContext(m_hRC);
}

void CGL_OneView::OnSize(UINT nType, int cx, int cy) 
{
	CView::OnSize(nType, cx, cy);
	m_nAspect = (GLdouble)cx / (GLdouble)cy;
	//ChangeCamera();
}

void CGL_OneView::OnViewSettings() 
{
	CViewDialog dlg;
	
	dlg.m_nCenterx = m_nCenterx;
	dlg.m_nCentery = m_nCentery;
	dlg.m_nCenterz = m_nCenterz;
	dlg.m_nEyex = m_nEyex;
	dlg.m_nEyey = m_nEyey;
	dlg.m_nEyez = m_nEyez;
	dlg.m_nFarClip = m_nFar;
	dlg.m_nField_of_View = m_nField_of_View;
	dlg.m_nNearClip = m_nNear;
	dlg.m_Upx = m_nUpx;
	dlg.m_Upy = m_nUpy;
	dlg.m_Upz = m_nUpz;

	INT_PTR response = dlg.DoModal();

	if (response == IDOK)
	{
		m_nCenterx = (GLdouble)dlg.m_nCenterx;
		m_nCentery = (GLdouble)dlg.m_nCentery;
		m_nCenterz = (GLdouble)dlg.m_nCenterz;
		m_nEyex = (GLdouble)dlg.m_nEyex;
		m_nEyey = (GLdouble)dlg.m_nEyey;
		m_nEyez = (GLdouble)dlg.m_nEyez;
		m_nFar = (GLdouble)dlg.m_nFarClip;
		m_nField_of_View = (GLdouble)dlg.m_nField_of_View;
		m_nNear = (GLdouble)dlg.m_nNearClip;
		m_nUpx = (GLdouble)dlg.m_Upx;
		m_nUpy = (GLdouble)dlg.m_Upy;
		m_nUpz = (GLdouble)dlg.m_Upz;
		AfxBeginThread(CGL_OneView::ThreadDraw, (LPVOID)this);
	}
}

void CGL_OneView::ChangeCamera()
{
	CRect clientRect;
	GetClientRect(&clientRect);
    glEnable(GL_DEPTH_TEST);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(m_nField_of_View, m_nAspect, m_nNear, m_nFar);
	glViewport(0, 0, clientRect.right, clientRect.bottom);
	gluLookAt(m_nEyex, m_nEyey, m_nEyez, m_nCenterx, m_nCentery, 
									m_nCenterz,m_nUpx,m_nUpy,m_nUpz);
}


BOOL CGL_OneView::Create(LPCTSTR lpszClassName, LPCTSTR lpszWindowName, DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID, CCreateContext* pContext) 
{
	return CWnd::Create(m_strWndClass, lpszWindowName, dwStyle, rect, pParentWnd, nID, pContext);
}

void CGL_OneView::OnEditClearall() 
{
	GetDocument()->RemoveAll();	
	m_bDirty = TRUE;
	AfxBeginThread(CGL_OneView::ThreadDraw, (LPVOID)this);
}

void CGL_OneView::OnRButtonDown(UINT nFlags, CPoint point) 
{
	CSelectDialog dlg(GetDocument()->GetObjects(), this);
	INT_PTR response = dlg.DoModal();
	if (response == IDOK)
	{
		m_bDirty = TRUE;
		AfxBeginThread(CGL_OneView::ThreadDraw, (LPVOID)this);
	}
}

BOOL CGL_OneView::PreCreateWindow(CREATESTRUCT& cs) 
{
	m_strWndClass = AfxRegisterWndClass(CS_DBLCLKS|
			 CS_HREDRAW|CS_VREDRAW|CS_OWNDC, LoadCursor(NULL, IDC_ARROW));

	cs.lpszClass = m_strWndClass;
	cs.style |= WS_CLIPCHILDREN | WS_CLIPSIBLINGS;
	return CView::PreCreateWindow(cs);
}

int CGL_OneView::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CView::OnCreate(lpCreateStruct) == -1)
		return -1;
	
		PIXELFORMATDESCRIPTOR pfd = 
	{
		sizeof(PIXELFORMATDESCRIPTOR),	// Structure size
		1,								// Structure version number
		PFD_DRAW_TO_WINDOW |			// Property flags
			PFD_SUPPORT_OPENGL, PFD_TYPE_RGBA,
		24,								// True color
		0, 0, 0, 0, 0, 0,				// Not concerned with these
		0, 0, 0, 0, 0, 0, 0,			// No alpha or accum buffer
		32,								// 32-bit depth buffer
		0, 0,							// No stencil or aux buffer
		PFD_MAIN_PLANE,					// Main layer type
		0,								// Reserved
		0, 0, 0,						// Unsupported
	};

	int pixelFormat =
		ChoosePixelFormat(GetDC()->m_hDC, &pfd);
	BOOL success =
		SetPixelFormat(GetDC()->m_hDC, pixelFormat, &pfd);
	if(!success)
	{
		AfxMessageBox(_T("No success setting pixel format"));
		return 1;
	}
	m_hRC = wglCreateContext(GetDC()->m_hDC);
	return 0;
}


void CGL_OneView::Serialize(CArchive& ar) 
{
	if (ar.IsStoring())
	{	// storing code
		ar << m_poly_face << m_poly_mode << m_nField_of_View << m_nNear
			<< m_nFar << m_nEyex << m_nEyey << m_nEyez << m_nCenterx << m_nCentery
				<< m_nCenterz << m_nUpx << m_nUpy << m_nUpz;
	}
	else
	{	// loading code
		ar >> m_poly_face >> m_poly_mode >> m_nField_of_View >> m_nNear
			>> m_nFar >> m_nEyex >> m_nEyey >> m_nEyez >> m_nCenterx >> m_nCentery
				>> m_nCenterz >> m_nUpx >> m_nUpy >> m_nUpz;
	}
}

void CGL_OneView::OnInitialUpdate() 
{
	CView::OnInitialUpdate();
	
	if (GetDocument()->m_bIsNew)
	{
		m_poly_face = GL_FRONT_AND_BACK;
		m_poly_mode = GL_FILL;
		m_nField_of_View = 50;
		m_nNear = 5;
		m_nFar = 15;
		m_nEyex = 0; 
		m_nEyey = 0; 
		m_nEyez = 10;
		m_nCenterx = 0; 
		m_nCentery = 0; 
		m_nCenterz = 0;
		m_nUpx = 0; 
		m_nUpy = 1;
		m_nUpz = 0;
	}
	GetDocument()->m_bIsNew = TRUE;
}

void CGL_OneView::OnObjectsList() 
{
	CObjTreeDlg dlg(this);
	INT_PTR response = dlg.DoModal();
	if (response == IDOK)
	{
		m_bDirty = TRUE;
		AfxBeginThread(CGL_OneView::ThreadDraw, (LPVOID)this);
	}
}

void CGL_OneView::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	if (nChar == VK_ADD || nChar == VK_SUBTRACT || nChar == VK_LEFT || nChar == VK_RIGHT
		 || nChar == VK_UP || nChar == VK_DOWN || nChar == VK_SPACE || nChar == VK_BACK
			|| nChar == VK_F11 || nChar == VK_F12)
		AfxBeginThread(CGL_OneView::ThreadDraw, (LPVOID)this);
	CView::OnKeyUp(nChar, nRepCnt, nFlags);
}

void CGL_OneView::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	switch(nChar)
	{
		case VK_ADD:
			if (m_nField_of_View > 5)
				m_nField_of_View -= 5;
			break;
		case VK_SUBTRACT:
			if (m_nField_of_View < 175)
				m_nField_of_View += 5;
			break;
		case VK_F11:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				if (m_nNear > 1.0f)
					m_nNear -= 1.0f;
				break;
			}
			if (m_nNear < (m_nFar - 1.0f))
				m_nNear += 1.0f;
			break;
		case VK_F12:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				if (m_nFar > (m_nNear + 1.0f))
					m_nFar -= 1.0f;
				break;
			}
			m_nFar += 1.0f;
			break;
		case VK_LEFT:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				m_nCenterx -= 1.0f;
				break;
			}
			m_nEyex -= 1.0f;
			break;
		case VK_RIGHT:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				m_nCenterx += 1.0f;
				break;
			}
			m_nEyex += 1.0f;
			break;
		case VK_UP:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				m_nCentery += 1.0f;
				break;
			}
			m_nEyey += 1.0f;
			break;
		case VK_DOWN:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				m_nCentery -= 1.0f;
				break;
			}
			m_nEyey -= 1.0f;
			break;
		case VK_BACK:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				m_nCenterz += 1.0f;
				break;
			}
			m_nEyez += 1.0f;
			break;
		case VK_SPACE:
			if ((::GetKeyState(VK_SHIFT)>>1))
			{
				m_nCenterz -= 1.0f;
				break;
			}
			m_nEyez -= 1.0f;
			break;
    }
	
	CView::OnKeyDown(nChar, nRepCnt, nFlags);
}

void CGL_OneView::OnUpdateFoV(CCmdUI* pCmdUI)
{
	CString strFoV;
	strFoV.Format(_T("Field of View %.f"), m_nField_of_View);
	pCmdUI->SetText(strFoV);
	pCmdUI->Enable(TRUE);
}

void CGL_OneView::OnUpdateLookFrom(CCmdUI* pCmdUI)
{
	CString strLookFrom;
	strLookFrom.Format(_T("From %.2f %.2f %.2f"), m_nEyex, m_nEyey, m_nEyez);
	pCmdUI->SetText(strLookFrom);
	pCmdUI->Enable(TRUE);
}

void CGL_OneView::OnUpdateLookAt(CCmdUI* pCmdUI)
{
	CString strLookAt;
	strLookAt.Format(_T("At %.2f %.2f %.2f"), m_nCenterx, m_nCentery, m_nCenterz);
	pCmdUI->SetText(strLookAt);
	pCmdUI->Enable(TRUE);
}

void CGL_OneView::OnUpdateNearFar(CCmdUI* pCmdUI)
{
	CString strClip;
	strClip.Format(_T("Near %.2f Far %.2f"), m_nNear, m_nFar);
	pCmdUI->SetText(strClip);
	pCmdUI->Enable(TRUE);
}

void CGL_OneView::OnHelpImplementationInfo() 
{
	CString message,lights, planes, depth_bits,
		stacks, cur_stacks, clips, texture;
	GLint max_lights, bit_planes, depth, stack_depth, cur_stack_depth,
		clip_planes, tex_size;
	wglMakeCurrent(GetDC()->m_hDC, m_hRC);
	glGetIntegerv(GL_MAX_LIGHTS, &max_lights);
	lights.Format(_T("Maximum number of lights is %d."), max_lights);
	glGetIntegerv(GL_STENCIL_BITS, &bit_planes);
	planes.Format(_T("\nNumber of bit planes in the stencil buffer is %d."), bit_planes);
	glGetIntegerv(GL_DEPTH_BITS, &depth);
	depth_bits.Format(_T("\nNumber of depth buffer bit planes is %d."), depth);
	glGetIntegerv(GL_MAX_MODELVIEW_STACK_DEPTH, &stack_depth);
	stacks.Format(_T("\nMaximum depth of the model view stack is %d."), stack_depth);
	glGetIntegerv(GL_MODELVIEW_STACK_DEPTH, &cur_stack_depth);
	cur_stacks.Format(_T("\nCurrent depth of the model view stack is %d."), cur_stack_depth);
	glGetIntegerv(GL_MAX_CLIP_PLANES, &clip_planes);
	clips.Format(_T("\nMaximum clipping planes is %d."), clip_planes);
	glGetIntegerv(GL_MAX_TEXTURE_SIZE, &tex_size);
	texture.Format(_T("\nMaximum texture height or width is %d."), tex_size);
	message = lights + planes + depth_bits + stacks + cur_stacks + clips + texture;
	AfxMessageBox(message);
	wglMakeCurrent(NULL, NULL);
}
