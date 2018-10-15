package com.cheery.dao.singer;

import com.cheery.model.SingerEntity;
import com.cheery.model.SongEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import java.util.List;

public class SingerDaoImpl extends HibernateDaoSupport implements ISingerDao {

    @Override
    public List<SingerEntity> queryAllSinger(String siType, String region, String style, Integer pageNo, Integer pageSize) throws Exception {
        return null;
    }
}
