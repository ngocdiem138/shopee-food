package com.shopeefood.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.GenerationType.SEQUENCE;
import static lombok.AccessLevel.NONE;
import static org.hibernate.annotations.CascadeType.ALL;

@Table
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class Cart extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "cart_sequence",
            sequenceName = "cart_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "cart_sequence")
    private Long id;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "cart_user_id_fk"))
    private User user;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "cart")
    private List<CartDetail> cartDetails = new ArrayList<>();

    public void addCartDetail(@NonNull CartDetail cartDetail) {
        if (!this.cartDetails.contains(cartDetail)) {
            this.cartDetails.add(cartDetail);
            cartDetail.setCart(this);
        }
    }

    public void removeCartDetail(@NonNull CartDetail cartDetail) {
        if (this.cartDetails.contains(cartDetail)) {
            this.cartDetails.remove(cartDetail);
            cartDetail.setCart(null);
        }
    }
}
