<%@ page language="java" contentType="text/html;charset=euc-kr"%>
<%request.setCharacterEncoding("euc-kr");%>
<HTML>
<HEAD>
<TITLE> �Խ��� </TITLE>

<SCRIPT language="JavaScript">
function Check() {
if (Write.title.value.length < 1) {//title �� �˻�. 1���� ���� ���, ���� �����Ƿ� alert() ����
	alert("�������� �Է��ϼ���.");
	Write.write_title.focus(); //java script �����Լ�. Ŀ���� ��ġ ���� ����
	return false; //�� ���� ������ �������� ����
    }
if (Write.contents.value.length < 1) {
	alert("�۳����� �Է��ϼ���.");
	Write.content.focus(); 
	return false;
    }
Write.submit(); //���� ��� ���ǿ� �ش���� ���� �� �Է¹��� ���� ������ ����
}
function list() {
location.href = "listboard.jsp"; //listboard.jsp �� �̵�
}
</SCRIPT>
</HEAD>
<BODY>
<%
String userID = (String) session.getAttribute("user");
%>
<center><font size='3'><b> �Խ��� �۾��� </b></font>                   
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>
<FORM Name='Write' Action='write_input.jsp' Method='post' OnSubmit='return Check()'>
<TABLE border='0' width='600' cellpadding='2' cellspacing='2'>
	<TR>
		<TD width='150' bgcolor='cccccc'>
			<font size='2'><center><b>����</b></center></font>
		</TD>
		<TD>
			<font size='2'>
			<input type="text" size='70' maxlength='50' name=title ></font>
		</TD>
	</TR>
	<TR>
		<TD width='150' bgcolor='cccccc'>
			<font size='2'><center><b>����</b></center></font>
		</TD>
			<TD>
       		<font size='2'><textarea wrap='hard' cols='70' rows='15'  name='contents' ></textarea></font>
      		</TD>
	</TR>
	<TR>
      		<TD colspan='2'><hr size='1' noshade></TD>
	</TR>

	<TR>
		<TD align='center' colspan='2' width='100%'>
		<TABLE>
			<TR>
				<TD width='100' align='center'><input Type = 'Reset' Value = '�ٽ� �ۼ�'></TD>
				<TD width='200' align='center'><input Type = 'Submit' Value = '���'></TD>
				<TD width='200' align='center'><input Type = 'Button' Value = '���' onClick='list();'></TD>
			</TR>
		</TABLE>
		</TD>
	</TR>
  </TABLE>
</FORM>
</BODY>
</HTML>