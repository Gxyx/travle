package com.travel.mapper;

import com.travel.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sanqi
 * @since 2021-01-29
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

}
