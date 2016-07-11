/**
 * 
 */
package member;

import javax.swing.JOptionPane;

import jdk.nashorn.internal.ir.Optimistic;

/**
 * @date   :2016. 6. 17.
 * @author :ckan
 * @file   :SchoolControll1.java
 * @story  :
 */
public class MemberControll {
	public static void main(String[] args) { // String[] params
		MemberService student = MemberServiceImpl.getInstance();
		while (true) {
			switch (JOptionPane.showInputDialog(""
					+ "---- 회원이 보는 화면 ---\n"
					+ "1회원가입 2로그인 3내정보보기(detail) 4내정보수정(비번) 5탈퇴 0종료\n"
					+ "--- 관리자 화면 ---\n"
					+ "11회원검색 12검색(ID) 13검색(이름) 14검색(성별) 15회원수")) {
			case "1":
				MemberBean stu = new MemberBean();
				String open = JOptionPane.showInputDialog("이름,ID,PW,주민번호[800101-1]");
				String open1[] = open.split(",");
				stu.setName(open1[0]);
				stu.setId(open1[1]);
				stu.setPw(open1[2]);
				stu.setSsn(open1[3]);
				stu.setRegDate();
				stu.setBirth();
				String result = student.open(stu);
				JOptionPane.showMessageDialog(null, result);
				break;
			case "2":
				MemberBean stu3 = new MemberBean();
				String open2 = JOptionPane.showInputDialog("로그인 ID,PW");
				String open3[] = open2.split(",");
				stu3.setId(open3[0]);
				stu3.setPw(open3[1]);
				JOptionPane.showMessageDialog(null, student.login(stu3));
				break;
			case "3":
				JOptionPane.showMessageDialog(null, student.show());
				break;
			case "4":
				MemberBean stu1 = new MemberBean();
				String pw = JOptionPane.showInputDialog("비밀번호 변경 ID,PW 입력");
				String memArry[] = pw.split(","); 
				stu1.setId(memArry[0]);
				stu1.setPw(memArry[1]);
				JOptionPane.showMessageDialog(null, student.update(stu1));
				break;
			case "5":
				MemberBean stu2 = new MemberBean();
				String id = JOptionPane.showInputDialog("ID 입력");
				stu2.setId(id);
				JOptionPane.showMessageDialog(null, student.delete(id));
				break;
			case "11":
				JOptionPane.showMessageDialog(null, student.list());
				break;
			case "12":
				JOptionPane.showMessageDialog(null, student.findById(JOptionPane.showInputDialog("ID 입력")));
				break;
			case "13":
				JOptionPane.showMessageDialog(null, student.findBy(JOptionPane.showInputDialog("이름 입력")));
				break;
			case "14":
				JOptionPane.showMessageDialog(null, student.genderCount(JOptionPane.showInputDialog("성별 남/여 입력"))+" 명");
				break;
			case "15":
				JOptionPane.showMessageDialog(null, student.count()+" 명");
				break;
			case "0":
				return;
			default:
				break;
			}
		}
	}
}
