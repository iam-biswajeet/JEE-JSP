package com.nt.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;
public class PrimeTag extends TagSupport {
	private int n=20;
	public PrimeTag() {
		System.out.println("PrimeTag.PrimeTag()");
	}
	public void setN(int n) {
		System.out.println("PrimeTag.setN()");
		System.out.println("PrimeTag.setN()");
		this.n=n;
		
	}
	private boolean isPrime(int n) {
		for(int i=2;i<n;i++) {
			if(n%i==0)
				return false;
		}
		return true;
	}
	@Override
	public int doStartTag() throws JspException {
		System.out.println("PrimeTag.doStartTag()");
		try {
			JspWriter out=pageContext.getOut();
			for(int i=1;i<n;i++) {
				if(isPrime(i)) {
					out.println("<b>"+i+"</b>"+"  ");
					
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	@Override
	public int doEndTag() throws JspException {
		System.out.println("PrimeTag.doEndTag()");
		return EVAL_PAGE;
	}

}
