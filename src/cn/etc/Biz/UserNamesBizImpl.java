package cn.etc.Biz;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.UserNamesDaoImpl;
import cn.etc.Model.UserNames;
@Service
public class UserNamesBizImpl implements UserNamesBiz {
	@Resource(name="userNamesDaoImpl")
	private UserNamesDaoImpl unbi;
	@Override
	public UserNames searchByTel(UserNames userNames) {
		return unbi.searchByTel(userNames);
	}

}
