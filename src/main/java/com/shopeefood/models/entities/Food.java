package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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
public class Food extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @GeneratedValue(strategy = IDENTITY)
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
    private String image;

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
}
