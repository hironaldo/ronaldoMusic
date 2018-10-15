package com.cheery.dao.comment;

import com.cheery.model.CommentEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class CommentDaoImpl extends HibernateDaoSupport implements ICommentDao {
    @Override
    public List<CommentEntity> queryAllCommentById(CommentEntity comment) throws Exception {
        return null;
    }
}
