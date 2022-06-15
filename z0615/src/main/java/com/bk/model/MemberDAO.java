package com.bk.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bk.database.SqlSessionManager;


public class MemberDAO {
	int cnt =0;
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	public int Register(MemberVO mvo) {
		SqlSession session = sqlSessionFactory.openSession(true);
			try{
			 cnt = session.insert("Register", mvo);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				session.close();
			}
			return cnt;
		}
	
	public MemberVO Login(MemberVO mvo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberVO mvo2 = session.selectOne("Login",mvo);
		
		session.close();
		return mvo2;
	}
}
