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
public class Province extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "province_sequence",
            sequenceName = "province_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "province_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "province_country_id_fk"))
    private Country country;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "province")
    private List<District> districts = new ArrayList<>();
}
