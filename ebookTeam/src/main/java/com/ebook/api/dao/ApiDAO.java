package com.ebook.api.dao;

import com.ebook.api.vo.ApiDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ApiDAO {

    @Autowired
    SqlSession sqlSession;

    public void insert(ApiDTO apiDTO) throws Exception {
        sqlSession.insert("apiMapper.bookinsert", apiDTO);
    }

    public List<ApiDTO> list(ApiDTO apiDTO) throws Exception {
        return sqlSession.selectList("apiMapper.booklist", apiDTO);
    }

    public List<ApiDTO> getSearchList(ApiDTO apiDTO) throws Exception {
        return sqlSession.selectList("apiMapper.getSearchList", apiDTO);
    }


}
