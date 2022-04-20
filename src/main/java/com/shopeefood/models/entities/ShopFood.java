package com.shopeefood.models.entities;

import com.shopeefood.models.entities.composite.keys.ShopFoodPK;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;

import static lombok.AccessLevel.NONE;

@Table
@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class ShopFood extends Base {

    @EmbeddedId
    @Setter(NONE)
    private ShopFoodPK id;

    @Column(nullable = false)
    @ColumnDefault("0")
    private Integer quantity;

    @ManyToOne
    @MapsId("shopId")
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "shop_food_shop_id_fk"))
    private Shop shop;

    @ManyToOne
    @MapsId("foodId")
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "shop_food_food_id_fk"))
    private Food food;
}
