// GL_OneDoc.h : interface of the CGL_OneDoc class
//
/////////////////////////////////////////////////////////////////////////////
#ifndef __GLDOC_H__
#define __GLDOC_H__

#include "GLSolids.h"

class CGL_OneDoc : public CDocument
{
protected: // create from serialization only
	CGL_OneDoc();
	DECLARE_DYNCREATE(CGL_OneDoc)

// Attributes
public:
	CDrawObjList* GetObjects() { return &m_objects; }
	BOOL m_bIsNew;
// Operations
public:
	void Draw(GLenum mode);
	void Add(CGLObjects* pObj);
	void RemoveAll();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGL_OneDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CGL_OneDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	CDrawObjList m_objects;
// Generated message map functions
protected:
	//{{AFX_MSG(CGL_OneDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};
#endif //__GLDOC_H__
/////////////////////////////////////////////////////////////////////////////
