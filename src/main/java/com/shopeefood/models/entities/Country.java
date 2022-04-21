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
public class Country extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "country_sequence",
            sequenceName = "country_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "country_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "country")
    private List<Province> provinces = new ArrayList<>();

    public void addProvince(@NotNull Province province) {
        if (!this.provinces.contains(province)) {
            this.provinces.add(province);
            province.setCountry(this);
        }
    }

    public void removeProvince(@NotNull Province province) {
        if (this.provinces.contains(province)) {
            this.provinces.remove(province);
            province.setCountry(null);
        }
    }
}
