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
public class Location extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "location_sequence",
            sequenceName = "location_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "location_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "location_ward_id_fk"))
    private Ward ward;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "location")
    private List<User> users = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "location")
    private List<Shop> shops = new ArrayList<>();

    public void addUser(@NonNull User user) {
        if (!this.users.contains(user)) {
            this.users.add(user);
            user.setLocation(this);
        }
    }

    public void removeUser(@NonNull User user) {
        if (this.users.contains(user)) {
            this.users.remove(user);
            user.setLocation(null);
        }
    }

    public void addShop(@NonNull Shop shop) {
        if (!this.shops.contains(shop)) {
            this.shops.add(shop);
            shop.setLocation(this);
        }
    }

    public void removeShop(@NonNull Shop shop) {
        if (!this.shops.contains(shop)) {
            this.shops.remove(shop);
            shop.setLocation(null);
        }
    }
}
