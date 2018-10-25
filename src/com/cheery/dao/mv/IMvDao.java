package com.cheery.dao.mv;

import com.cheery.model.MvEntity;

public interface IMvDao {
    /**
     * IUserDao interface MV
     *
     * @author CR7
     * @date 2018/10/25
     */

    /*根据MVid查询MV信息--> [MV基本信息]*/
    MvEntity queryMvById(Integer mvId) throws Exception;
}
