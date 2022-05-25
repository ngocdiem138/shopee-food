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
public class District extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "district_province_id_fk"))
    private Province province;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "district")
    private List<Ward> wards = new ArrayList<>();
}
