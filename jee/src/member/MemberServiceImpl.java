package member;

import java.util.List;
import java.util.Map;

import account.AccountService;
import account.AccountServiceImpl;

public class MemberServiceImpl implements MemberService{
	MemberDAO dao = MemberDAO.getInstance(); // 싱글톤 패턴
	AccountService accService = AccountServiceImpl.getInstance();
	MemberBean session;
	MemberBean s;
	private static MemberServiceImpl instance = new MemberServiceImpl();
	public static MemberServiceImpl getInstance() {
		return instance;
	}
	private MemberServiceImpl() {
	}
	@Override
	public String open(MemberBean stu) {
		return (dao.insert(stu) == 1)?"회원가입 축하합니다.":"회원가입 실패";
	}
	@Override
	public MemberBean show() {
		return session;
	}
	@Override
	public String update(MemberBean stu) {
		return (dao.update(stu) == 1)?"PW 변경 되었습니다.":"PW 변경 실패했습니다.";
	}
	@Override
	public String delete(String id) {
		return (dao.delete(id) == 1)?"삭제 성공 입니다.":"삭제 실패입니다.";
	}
	public int count() {
		return dao.count();
	}
	public MemberBean findById(String id) {
		return dao.findById(id);
	}
	public List<?> list() {
		return dao.list();
	}
	public List<?> findBy(String name) {
		return dao.findByName(name);
	}
	@Override
	public Map<?, ?> map() {
		// TODO Auto-generated method stub
		return null;
	}
	public String login(MemberBean member) {
		String result = "ID가 존재하지 않습니다.";
		if (findId(member.getId()) == 0) {
			result = "ID가 존재하지 않습니다.";
		} else {
			if (dao.login(member)) {
				result = "로그인성공";
				session = findById(member.getId());
				accService.map();
			} else {
				result = "로그인 실패";
			}
		}
		return result;
	}
	@Override
	public int genderCount(String gender) {
		return dao.findByGender(gender);
	}
	@Override
	public int findId(String id) {
		return dao.findId(id);
	}
}
