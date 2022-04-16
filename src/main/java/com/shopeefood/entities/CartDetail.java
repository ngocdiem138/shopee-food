package com.shopeefood.entities;

import com.shopeefood.entities.composite.keys.CartDetailPK;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;

import static lombok.AccessLevel.NONE;

@Table
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class CartDetail extends Base {

    @EmbeddedId
    @Setter(NONE)
    private CartDetailPK id;

    @ColumnDefault("0")
    @Column(nullable = false)
    private Integer quantity;

    @ManyToOne
    @MapsId("cartId")
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "cart_detail_cart_id_fk"))
    private Cart cart;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "cart_detail_food_id_fk"))
    private Food food;
}
