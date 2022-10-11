


<!-- create bean class obj and keep it in specified scope -->
<jsp:useBean id="st" class="com.nt.beans.StudentBean" scope="session"/>


Student Id::<jsp:getProperty name="st" property="sid"/><br>
Student Name::<jsp:getProperty name="st" property="sname"/><br>
Student Address::<jsp:getProperty name="st" property="sadd"/><br>
Student Average::<jsp:getProperty name="st" property="savg"/>