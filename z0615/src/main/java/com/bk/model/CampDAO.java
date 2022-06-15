package com.bk.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bk.database.SqlSessionManager;

public class CampDAO {
	int cnt =0;
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public CampVO Search(String search){		
		SqlSession session = sqlSessionFactory.openSession(true);		
		CampVO search1 = session.selectOne("Search", search); 		
		return search1;		
	}
	
	public List<CampVO> SearchLoc(String search) {		
		SqlSession session = sqlSessionFactory.openSession(true);
		List<CampVO> list = new ArrayList<CampVO>();		
		list = session.selectList("SearchLoc", search); 		
		return list;
	}
	
	public List<CampVO> SearchList(Map<String, Object> param){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<CampVO> list = new ArrayList<CampVO>();		
		list = session.selectList("SearchList", param); 		
		return list;
	}
	
	
	public CampVO SearchOne(int search){		
		SqlSession session = sqlSessionFactory.openSession(true);		
		CampVO search1 = session.selectOne("SearchOne", search); 		
		return search1;		
	}
	
	public List<CampVO> SearchDivision(String text) {		
		SqlSession session = sqlSessionFactory.openSession(true);
		List<CampVO> list = new ArrayList<CampVO>();		
		list = session.selectList("SearchDivision", text); 		
		return list;
	}
	
}
