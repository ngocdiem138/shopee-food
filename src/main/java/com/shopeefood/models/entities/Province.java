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

    public void addDistrict(@NotNull District district) {
        if (!this.districts.contains(district)) {
            this.districts.add(district);
            district.setProvince(this);
        }
    }

    public void removeDistrict(@NotNull District district) {
        if (this.districts.contains(district)) {
            this.districts.remove(district);
            district.setProvince(null);
        }
    }
}
