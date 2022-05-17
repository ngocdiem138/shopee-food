package com.shopeefood.models.entities;

import com.shopeefood.models.entities.composite.keys.BillDetailPK;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.util.Optional;

import static lombok.AccessLevel.NONE;

@Table
@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class BillDetail extends Base {

    @EmbeddedId
    @Setter(NONE)
    private BillDetailPK id;

    @ColumnDefault("0")
    @Column(nullable = false)
    private Integer quantity;

    @Transient
    @Getter(NONE)
    @Setter(NONE)
    private Double money;

    @ManyToOne
    @JoinColumn(foreignKey = @ForeignKey(name = "bill_detail_voucher_id_fk"))
    private Voucher voucher;

    @ManyToOne
    @MapsId("foodId")
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "bill_detail_food_id_fk"))
    private Food food;

    @ManyToOne
    @MapsId("billId")
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "bill_detail_bill_id_fk"))
    private Bill bill;

    public Double getMoney() {
        double money = food.getPrice() * quantity;
        if (Optional.ofNullable(voucher).isPresent()) {
            money -= voucher.getMoney();
        }
        return money;
    }
}
