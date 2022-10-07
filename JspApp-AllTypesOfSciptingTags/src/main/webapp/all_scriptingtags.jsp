


<h1 style='color: red; text-align: center'>My first Jsp Page</h1>
<%! 

	public String WishMessageGenerator(String user){
	//find Date A nd Time
		java.time.LocalDateTime ldt=java.time.LocalDateTime.now();
	//GEt Current hour
		int hour=ldt.getHour();
		if(hour<12){
			return "GoodMorning::"+user;
		}
	else if(hour<16){
		return "GoodAfterNoon::"+user;
	}
	else if(hour<20){
		return "GoodEvening::"+user;
	}
	else{
		return "GoodNight::"+user;
	}
	
	} %>
	
 	<h1 style='color:red;text-align:center'>Date And Time::<%=new java.util.Date() %></h1> 
	
	<h1 style="color:red;text-align:center"><%out.println("WishMessage::"+WishMessageGenerator("biswajit")) ;%></h1>
	
	
	