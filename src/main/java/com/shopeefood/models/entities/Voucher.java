package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.sql.Timestamp;
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
public class Voucher extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "voucher_sequence",
            sequenceName = "voucher_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "voucher_sequence")
    private Long id;

    @Column(nullable = false)
    private String name;

    @Lob
    @Column(nullable = false)
    private String description;

    @ColumnDefault("0")
    @Column(name = "quantity_current", nullable = false)
    private Integer quantityCurrent;

    @ColumnDefault("0")
    @Column(nullable = false)
    private Double money;

    @Column(name = "start_date", nullable = false)
    private Timestamp startDate;

    @Column(name = "end_date", nullable = false)
    private Timestamp endDate;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "voucher_shop_id_fk"))
    private Shop shop;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "voucher_food_id_fk"))
    private Food food;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "voucher")
    private List<BillDetail> billDetails = new ArrayList<>();

    @ManyToMany
    @Cascade(ALL)
    @ToString.Exclude
    @JoinTable(
            name = "voucher_user",
            joinColumns = @JoinColumn(name = "voucher_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private List<User> users = new ArrayList<>();

    public void addBillDetail(@NonNull BillDetail billDetail) {
        if (!this.billDetails.contains(billDetail)) {
            this.billDetails.add(billDetail);
            billDetail.setVoucher(this);
        }
    }

    public void removeBillDetail(@NonNull BillDetail billDetail) {
        if (this.billDetails.contains(billDetail)) {
            this.billDetails.remove(billDetail);
            billDetail.setVoucher(null);
        }
    }

    public void addUser(@NonNull User user) {
        if (!this.users.contains(user)) {
            this.users.add(user);
            user.getVouchers().add(this);
            user.setVouchers(user.getVouchers());
        }
    }

    public void removeUser(@NonNull User user) {
        if (this.users.contains(user)) {
            this.users.remove(user);
            user.getVouchers().remove(this);
            user.setVouchers(user.getVouchers());
        }
    }
}
