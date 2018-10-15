package com.cheery.dao.comment;

import com.cheery.model.CommentEntity;
import java.util.List;

public interface ICommentDao {
    /**
     * IUserDao interface 评论
     * @author CR7
     * @date 2018/10/15
     */

    List<CommentEntity> queryAllCommentById(CommentEntity comment) throws Exception;
}
