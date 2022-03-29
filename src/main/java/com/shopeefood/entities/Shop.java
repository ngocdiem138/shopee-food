package com.shopeefood.entities;

import com.shopeefood.types.TimeMapCustomization;
import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Nationalized;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.sql.Timestamp;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

import static javax.persistence.GenerationType.*;
import static lombok.AccessLevel.*;
import static org.hibernate.annotations.CascadeType.ALL;

@Table
@Getter
@Setter
@Entity
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

    public void setOpenTime(@NonNull List<TimeMapCustomization<LocalTime, LocalTime>> timeMapCustomizations) {
        this.openTime = TimeMapCustomization.getStringFromListTimeMapCustomization(timeMapCustomizations);
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
