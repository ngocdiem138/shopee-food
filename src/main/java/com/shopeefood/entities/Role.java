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
public class Role extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "role_sequence",
            sequenceName = "role_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "role_sequence")
    private Long id;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @Nationalized
    @Column(nullable = false)
    private String description;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "role")
    private List<User> users = new ArrayList<>();

    public void addUser(@NonNull User user) {
        if (!this.users.contains(user)) {
            this.users.add(user);
            user.setRole(this);
        }
    }

    public void removeUser(@NonNull User user) {
        if (this.users.contains(user)) {
            this.users.remove(user);
            user.setRole(null);
        }
    }
}
