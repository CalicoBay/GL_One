// GL_OneDoc.cpp : implementation of the CGL_OneDoc class
//

#include "stdafx.h"
#include "GL_One.h"
#include "GLSolids.h"
#include "GL_OneDoc.h"
#include "GL_OneView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CGL_OneDoc

IMPLEMENT_DYNCREATE(CGL_OneDoc, CDocument)

BEGIN_MESSAGE_MAP(CGL_OneDoc, CDocument)
	//{{AFX_MSG_MAP(CGL_OneDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGL_OneDoc construction/destruction

CGL_OneDoc::CGL_OneDoc()
{
	// TODO: add one-time construction code here
	m_bIsNew = TRUE;
}

CGL_OneDoc::~CGL_OneDoc()
{
}

BOOL CGL_OneDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	return TRUE;
}

/////////////////////////////////////////////////////////////////////////////
// CGL_OneDoc serialization

void CGL_OneDoc::Serialize(CArchive& ar)
{	
	if (ar.IsLoading())
		m_bIsNew = FALSE;
	POSITION pos = GetFirstViewPosition();
	CGL_OneView* pFirstView = (CGL_OneView*)GetNextView( pos );
	pFirstView->Serialize(ar);
	m_objects.Serialize(ar);
}

/////////////////////////////////////////////////////////////////////////////
// CGL_OneDoc diagnostics

#ifdef _DEBUG
void CGL_OneDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CGL_OneDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CGL_OneDoc commands
void CGL_OneDoc::Draw(GLenum mode)
{
	POSITION pos = m_objects.GetHeadPosition();
	if(pos != NULL)
	{
		BOOL IsIt = m_objects.GetHead()->GetIsColorDifferent();
		m_objects.GetHead()->SetColorIsDifferent(TRUE);
		while (pos != NULL)
		{
			CGLObjects* pObj = m_objects.GetNext(pos);
			pObj->Draw(mode);
		}
		m_objects.GetHead()->SetColorIsDifferent(IsIt);
	}
}

void CGL_OneDoc::Add(CGLObjects* pObj)
{
	m_objects.AddTail(pObj);
	pObj->SetDocument(this);
	SetModifiedFlag();
}

void CGL_OneDoc::RemoveAll()
{
	POSITION pos = m_objects.GetHeadPosition();

	while( pos != NULL )
	{
		delete m_objects.GetNext( pos );
	}
	m_objects.RemoveAll();
	SetModifiedFlag();
}
