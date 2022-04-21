package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Nationalized;

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
public class Category extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "category_sequence",
            sequenceName = "category_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "category_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "category")
    private List<Food> foods = new ArrayList<>();

    public void addFood(@NotNull Food food) {
        if (!this.foods.contains(food)) {
            this.foods.add(food);
            food.setCategory(this);
        }
    }

    public void removeFood(@NotNull Food food) {
        if (this.foods.contains(food)) {
            this.foods.remove(food);
            food.setCategory(null);
        }
    }
}
