package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;
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
public class Food extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "food_sequence",
            sequenceName = "food_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "food_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @Lob
    @Column
    @Nationalized
    private String description;

    @ColumnDefault("0.0")
    @Column(nullable = false)
    private Double price;

    @Column(nullable = false)
    private Byte[] image;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "food_category_id_fk"))
    private Category category;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "food_menu_id_fk"))
    private Menu menu;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "food")
    private List<BillDetail> billDetails = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "food")
    private List<Voucher> vouchers = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "food")
    private List<CartDetail> cartDetails = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "food")
    private List<ShopFood> shopFoods = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "food")
    private List<EvaluationFood> evaluationFoods = new ArrayList<>();

    public void addBillDetail(@NonNull BillDetail billDetail) {
        if (!this.billDetails.contains(billDetail)) {
            this.billDetails.add(billDetail);
            billDetail.setFood(this);
        }
    }

    public void removeBillDetail(@NonNull BillDetail billDetail) {
        if (this.billDetails.contains(billDetail)) {
            this.billDetails.remove(billDetail);
            billDetail.setFood(null);
        }
    }

    public void addVoucher(@NonNull Voucher voucher) {
        if (!this.vouchers.contains(voucher)) {
            this.vouchers.add(voucher);
            voucher.setFood(this);
        }
    }

    public void removeVoucher(@NonNull Voucher voucher) {
        if (this.vouchers.contains(voucher)) {
            this.vouchers.remove(voucher);
            voucher.setFood(null);
        }
    }

    public void addCartDetail(@NonNull CartDetail cartDetail) {
        if (!this.cartDetails.contains(cartDetail)) {
            this.cartDetails.add(cartDetail);
            cartDetail.setFood(this);
        }
    }

    public void removeCartDetail(@NonNull CartDetail cartDetail) {
        if (this.cartDetails.contains(cartDetail)) {
            this.cartDetails.remove(cartDetail);
            cartDetail.setFood(null);
        }
    }

    public void addShopFood(@NonNull ShopFood shopFood) {
        if (!this.shopFoods.contains(shopFood)) {
            this.shopFoods.add(shopFood);
            shopFood.setFood(this);
        }
    }

    public void removeShopFood(@NonNull ShopFood shopFood) {
        if (this.shopFoods.contains(shopFood)) {
            this.shopFoods.remove(shopFood);
            shopFood.setFood(null);
        }
    }

    public void addEvaluationFood(@NonNull EvaluationFood evaluationFood) {
        if (!this.evaluationFoods.contains(evaluationFood)) {
            this.evaluationFoods.add(evaluationFood);
            evaluationFood.setFood(this);
        }
    }

    public void removeEvaluationFood(@NonNull EvaluationFood evaluationFood) {
        if (this.evaluationFoods.contains(evaluationFood)) {
            this.evaluationFoods.remove(evaluationFood);
            evaluationFood.setFood(null);
        }
    }
}
