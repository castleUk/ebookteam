package com.ebook.api.service;

import com.ebook.api.dao.ApiDAO;
import com.ebook.api.vo.ApiDTO;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
public class ApiService {

    @Autowired
    ApiDAO apiDAO;

    public void insertBook(ApiDTO apiDTO) throws Exception {
        apiDAO.insert(apiDTO);
    }

    public List<ApiDTO> list(ApiDTO apiDTO) throws Exception {
        return apiDAO.list(apiDTO);

    }

    public List<ApiDTO> getSearchList(ApiDTO apiDTO) throws Exception {
        return apiDAO.getSearchList(apiDTO);
    }

    public List<ApiDTO> getRandomList(ApiDTO apiDTO) throws Exception{
        return apiDAO.getRandomList(apiDTO);
    }

}
