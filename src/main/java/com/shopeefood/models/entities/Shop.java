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

import static javax.persistence.GenerationType.IDENTITY;
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
    @GeneratedValue(strategy = IDENTITY)
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
    @Column(name = "open_time", nullable = false)
    private String openTime;

    @Transient
    @Setter(NONE)
    @Getter(NONE)
    private Float evaluationLevel;

    @Column(nullable = false)
    private String image;

    @Transient
    @Setter(NONE)
    @Getter(NONE)
    private Double minMoney;

    @Transient
    @Setter(NONE)
    @Getter(NONE)
    private Double maxMoney;

    @ManyToOne
    @JoinColumn(name = "user_boss_id", nullable = false, foreignKey = @ForeignKey(name = "shop_user_boss_id_fk"))
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
