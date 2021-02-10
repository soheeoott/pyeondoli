<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %> 
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
	<title>공지사항</title>
	
	<script type="text/javascript">                              
	function check(){                                         
		with(document.msgwrite){                      
			if(subject.value.length == 0){                  
	   			alert("제목을 입력해 주세요!!");                       
	   			subject.focus();                           
	   			return false;                             
	  		}                                         
		  	if(content.value.length == 0){                    
		   		alert("내용을 입력해주세요!!");                   
		   		content.focus();                         
		   		return false;                           
  			}                                        
	  		document.msgwrite.submit();                       
	 	}                                          
	}                                            
	</script>  
	
	<%@ include file="../header.jsp" %>     
</head>
<body>
	<form name="msgwrite" method="post" action="#"> <!-- notice_save.jsp -->    
		<table width="600" cellspacing="0" cellpadding="2">           
			<tr>                                        
				<td colspan="2" bgcolor="#1F4F8F" height="1"></td>  
			</tr>                                        
		 	
		 	<tr>                                        
		  		<td colspan="2" bgcolor="#DFEDFF" height="20" class="notice">&nbsp;&nbsp;<font size="2">공지사항 작성</font></td> 
		 	</tr>
		 	                                       
		 	<tr>                                       
		  		<td colspan="2" bgcolor="#1F4F8F" height="1"></td>   
		 	</tr>                                     
		                                      
		 	<tr>                                        
		  		<td width="124" align="center"  bgcolor="#f4f4f4">제 목</td>   
		  		<td width="494" style="padding:0 0 0 10" height="25"><input type=text name=subject size="60" maxlength="60" class="input_style2"></td>                                      
		 	</tr> 	                                       
		 	
		 	<tr>                             
		  		<td width="124" height="162" align="center" valign="top" bgcolor="#f4f4f4" style="padding-top:7px;">내 용</td>
		  		<td width="494" valign="top"  style="padding:5 0 5 10">    
		   			<textarea cols="65" rows="10" name=content  class="textarea_style1"></textarea>     
		  		</td>                                     
		 	</tr>                                        
		 	
		 	<tr>                                        
		  		<td width="124" align="center"  bgcolor="#f4f4f4">암 호</td>  
		  		<td width="494" style="padding:0 0 0 10" height="25">                   
		   			<input type=password name=pass class="style1"><br>(비밀번호 4자리를 입력하면 수정 또는 삭제가 가능합니다.)
		  		</td>                                       
		 	</tr>     	                                  
		 
		 	<tr>                                       
		  		<td colspan="2" height="1" class='button'></td>                                  
		 	</tr>                                       
		 
		 	<tr>              
		  		<td colspan="2" height="1" bgcolor="#1F4F8F"></td>     
		 	</tr>                                      
		 	
		 	<tr>                                         
		  		<td colspan="2" height="10"></td>                                    
		 	</tr>                                          
		 
		 	<tr>                                          
		  		<td colspan="2" align="right">                    
			   		<table width="100%" border="0" cellpadding="0" cellspacing="0">                      
			    		<tr>                     
			     			<td width="28%">&nbsp;</td>               
			     			<td width="51%">&nbsp;</td>                
			     			<td width="12%">
			     				<a href="#" onClick="history.go(-1)">
			     					<img src="image/cancle.gif" width="46" height="20" border="0"> 
			     				</a>
			     			</td>
			     			<td width="9%">
			     				<a href="#" onClick="check();">
			     					<img src="image/ok.gif" width="46" height="20" border="0">
			     				</a>
			     			</td>
			    		</tr>
			   		</table>
		  		</td>
		 	</tr>
		</table>                                       
	</form>                                     
</body>
</html>