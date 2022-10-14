package com.nt.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class PrintLabelTag extends TagSupport {
	public PrintLabelTag() {
		System.out.println("PrintLabelTag.PrintLabelTag()");
	}
	@Override
	public int doStartTag() throws JspException {
		System.out.println("PrintLabelTag.doStartTag()");
		try {
			JspWriter out=pageContext.getOut();
			out.println("<h2>Prime Number::</h2>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	@Override
	public int doEndTag() throws JspException {
		System.out.println("PrintLabelTag.doEndTag()");
		return EVAL_PAGE;
		
	}

}
