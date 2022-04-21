package com.shopeefood.models.entities;

import com.shopeefood.types.TimeMapCustom;
import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

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
public class Shop extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "shop_sequence",
            sequenceName = "shop_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "shop_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String phone;

    @Lob
    @Column
    @Nationalized
    private String description;

    @Setter(NONE)
    @Column(nullable = false)
    private String openTime;

    @Transient
    @Setter(NONE)
    @Getter(NONE)
    private Float evaluationLevel;

    @Column(nullable = false)
    private Byte[] image;

    @Transient
    @Setter(NONE)
    @Getter(NONE)
    private Double minMoney;

    @Transient
    @Setter(NONE)
    @Getter(NONE)
    private Double maxMoney;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "shop_user_boss_id_fk"))
    private User userBoss;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "shop_location_id_fk"))
    private Location location;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "shop")
    private List<Bill> bills = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "shop")
    private List<ShopFood> shopFoods = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "shop")
    private List<Voucher> vouchers = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "shop")
    private List<EvaluationShop> evaluationShops = new ArrayList<>();

    @ManyToMany
    @Cascade(ALL)
    @ToString.Exclude
    @JoinTable(
            name = "shop_staff",
            joinColumns = @JoinColumn(name = "shop_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private List<User> staffs = new ArrayList<>();

    public void addBill(@NotNull Bill bill) {
        if (!this.bills.contains(bill)) {
            this.bills.add(bill);
            bill.setShop(this);
        }
    }

    public void removeBill(@NotNull Bill bill) {
        if (this.bills.contains(bill)) {
            this.bills.remove(bill);
            bill.setShop(null);
        }
    }

    public void addShopFood(@NotNull ShopFood shopFood) {
        if (!this.shopFoods.contains(shopFood)) {
            this.shopFoods.add(shopFood);
            shopFood.setShop(this);
        }
    }

    public void removeShopFood(@NotNull ShopFood shopFood) {
        if (this.shopFoods.contains(shopFood)) {
            this.shopFoods.remove(shopFood);
            shopFood.setShop(null);
        }
    }

    public void addVoucher(@NotNull Voucher voucher) {
        if (!this.vouchers.contains(voucher)) {
            this.vouchers.add(voucher);
            voucher.setShop(this);
        }
    }

    public void removeVoucher(@NotNull Voucher voucher) {
        if (this.vouchers.contains(voucher)) {
            this.vouchers.remove(voucher);
            voucher.setShop(null);
        }
    }

    public void addEvaluationShop(@NotNull EvaluationShop evaluationShop) {
        if (!this.evaluationShops.contains(evaluationShop)) {
            this.evaluationShops.add(evaluationShop);
            evaluationShop.setShop(this);
        }
    }

    public void removeEvaluationShop(@NotNull EvaluationShop evaluationShop) {
        if (this.evaluationShops.contains(evaluationShop)) {
            this.evaluationShops.remove(evaluationShop);
            evaluationShop.setShop(null);
        }
    }

    public void addStaff(@NotNull User staff) {
        if (!this.staffs.contains(staff)) {
            this.staffs.add(staff);
            staff.getStaffOfShops().add(this);
            staff.setStaffOfShops(staff.getStaffOfShops());
        }
    }

    public void removeStaff(@NotNull User staff) {
        if (this.staffs.contains(staff)) {
            this.staffs.remove(staff);
            staff.getStaffOfShops().remove(this);
            staff.setStaffOfShops(staff.getStaffOfShops());
        }
    }

    public void setOpenTime(@NotNull List<TimeMapCustom<LocalTime, LocalTime>> timeMapCustomizations) {
        this.openTime = TimeMapCustom.getStringFromListTimeMapCustom(timeMapCustomizations);
    }

    public Float getEvaluationLevel() {
        return (float) evaluationShops.stream().mapToInt(EvaluationShop::getLevelStar).sum() / evaluationShops.size();
    }

    public Double getMinMoney() {
        Optional<Food> foodWithMinPrice = shopFoods.stream().map(ShopFood::getFood).min(Comparator.comparing(Food::getPrice));
        return foodWithMinPrice.isEmpty() ? null : foodWithMinPrice.get().getPrice();
    }

    public Double getMaxMoney() {
        Optional<Food> foodWithMaxPrice = shopFoods.stream().map(ShopFood::getFood).max(Comparator.comparing(Food::getPrice));
        return foodWithMaxPrice.isEmpty() ? null : foodWithMaxPrice.get().getPrice();
    }
}
