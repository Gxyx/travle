package com.travel.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author sanqi
 * @since 2021-01-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="TravelNotes对象", description="")
public class TravelNotes implements Serializable {

    private static final long serialVersionUID = 1L;

    private String title;

    private String date;

    private String background;

    private String text1;

    private String img1;

    private String text2;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;


}
