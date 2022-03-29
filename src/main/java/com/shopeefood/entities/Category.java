package com.shopeefood.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

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
}
