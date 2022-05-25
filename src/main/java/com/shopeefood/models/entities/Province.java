package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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
public class Province extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
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
