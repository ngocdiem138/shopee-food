package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.GenerationType.IDENTITY;
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
public class Cart extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @GeneratedValue(strategy = IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "cart_user_id_fk"))
    private User user;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "cart")
    private List<CartDetail> cartDetails = new ArrayList<>();
}
