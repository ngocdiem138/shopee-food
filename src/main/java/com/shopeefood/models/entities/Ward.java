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

    public void addLocation(@NotNull Location location) {
        if (!this.locations.contains(location)) {
            this.locations.add(location);
            location.setWard(this);
        }
    }

    public void removeLocation(@NotNull Location location) {
        if (this.locations.contains(location)) {
            this.locations.remove(location);
            location.setWard(null);
        }
    }
}
