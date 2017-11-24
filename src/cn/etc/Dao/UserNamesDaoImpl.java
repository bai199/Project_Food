package cn.etc.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.UserNames;
@Repository
public class UserNamesDaoImpl implements UserNamesDao {
	@Autowired
	private UserNamesDao und;
	@Override
	public UserNames searchByTel(UserNames userNames) {
		return und.searchByTel(userNames);
	}

}
