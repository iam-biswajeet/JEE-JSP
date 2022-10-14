package com.nt.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class DisplayTag extends TagSupport {
	public DisplayTag() {
		System.out.println("DisplayTag.DisplayTag()");
	}
	private String font;
	private int size;
	
	public void setFont(String font) {
		System.out.println("DisplayTag.setFont()");
		this.font = font;
	}
	public void setSize(int size) {
		System.out.println("DisplayTag.setSize()");
		this.size = size;
	}
	@Override
	public int doStartTag() throws JspException {
		System.out.println("DisplayTag.doStartTag()");
		try {
		JspWriter out=pageContext.getOut();
		out.println("<span style='font-family:"+font+";font-size:"+size+";'>");
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}
	@Override
	public int doEndTag() throws JspException {
		System.out.println("DisplayTag.doEndTag()");
		try {
			JspWriter out=pageContext.getOut();
			out.println("</span>");
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		return EVAL_PAGE;
		
	}
	
}
