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
public class Ward extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "ward_sequence",
            sequenceName = "ward_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "ward_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "ward_district_id_fk"))
    private District district;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "ward")
    private List<Location> locations = new ArrayList<>();
}
