package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.GenerationType.SEQUENCE;
import static lombok.AccessLevel.NONE;
import static org.hibernate.annotations.CascadeType.ALL;

@Table
@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class Bill extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "bill_sequence",
            sequenceName = "bill_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "bill_sequence")
    private Long id;

    @Setter(NONE)
    @ColumnDefault("0.0")
    @Column(name = "total_money", nullable = false)
    private Double totalMoney;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "bill_user_id_fk"))
    private User user;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "bill_shop_id_fk"))
    private Shop shop;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "bill_location_id_fk"))
    private Location location;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "bill_transport_money_id_fk"))
    private TransportMoney transportMoney;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "bill")
    private List<BillDetail> billDetails = new ArrayList<>();

    public void setTotalMoney(@NotNull List<BillDetail> billDetails) {
        this.totalMoney = billDetails.stream().mapToDouble(BillDetail::getMoney).sum() + transportMoney.getMoney();
    }

    public void setTransportMoney(@NotNull Location locationShop, @NotNull Location locationUser) {
        double distance = 100;
//        this.transportMoney = transportMoneyService.getTransportMoneyByDistance(distance);
    }
}
