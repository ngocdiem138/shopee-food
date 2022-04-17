package com.shopeefood.entities;

import com.shopeefood.types.Gender;
import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.GenerationType.SEQUENCE;
import static lombok.AccessLevel.NONE;
import static org.hibernate.annotations.CascadeType.ALL;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@Table(uniqueConstraints = {
        @UniqueConstraint(name = "user_email_unique", columnNames = "email"),
        @UniqueConstraint(name = "user_phone_unique", columnNames = "phone")
})
public class User extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "user_sequence",
            sequenceName = "user_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "user_sequence")
    private Long id;

    @Email
    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String password;

    @Nationalized
    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private Timestamp dob;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private Gender gender;

    @Column(nullable = false)
    private String phone;

    @Column(name = "id_card_number")
    private String idCardNumber;

    @ColumnDefault("1")
    @Column(nullable = false)
    private Boolean status;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "user_role_id_fk"))
    private Role role;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "user_location_id_fk"))
    private Location location;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "user")
    private List<Cart> carts = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "user")
    private List<EvaluationFood> evaluationFoods = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "user")
    private List<EvaluationShop> evaluationShops = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "userBoss")
    private List<Shop> bossOfShops = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @ManyToMany(mappedBy = "users")
    private List<Voucher> vouchers = new ArrayList<>();

    @Cascade(ALL)
    @ToString.Exclude
    @ManyToMany(mappedBy = "staffs")
    private List<Shop> staffOfShops = new ArrayList<>();

    public void addCart(@NonNull Cart cart) {
        if (!this.carts.contains(cart)) {
            this.carts.add(cart);
            cart.setUser(this);
        }
    }

    public void removeCart(@NonNull Cart cart) {
        if (this.carts.contains(cart)) {
            this.carts.remove(cart);
            cart.setUser(null);
        }
    }

    public void addEvaluationFood(@NonNull EvaluationFood evaluationFood) {
        if (!this.evaluationFoods.contains(evaluationFood)) {
            this.evaluationFoods.add(evaluationFood);
            evaluationFood.setUser(this);
        }
    }

    public void removeEvaluationFood(@NonNull EvaluationFood evaluationFood) {
        if (this.evaluationFoods.contains(evaluationFood)) {
            this.evaluationFoods.remove(evaluationFood);
            evaluationFood.setUser(null);
        }
    }

    public void addEvaluationShop(@NonNull EvaluationShop evaluationShop) {
        if (!this.evaluationShops.contains(evaluationShop)) {
            this.evaluationShops.add(evaluationShop);
            evaluationShop.setUser(this);
        }
    }

    public void removeEvaluationShop(@NonNull EvaluationShop evaluationShop) {
        if (this.evaluationShops.contains(evaluationShop)) {
            this.evaluationShops.remove(evaluationShop);
            evaluationShop.setUser(null);
        }
    }

    public void addBossOfShop(@NonNull Shop shop) {
        if (!this.bossOfShops.contains(shop)) {
            this.bossOfShops.add(shop);
            shop.setUserBoss(this);
        }
    }

    public void removeBossOfShop(@NonNull Shop shop) {
        if (this.bossOfShops.contains(shop)) {
            this.bossOfShops.remove(shop);
            shop.setUserBoss(null);
        }
    }

    public void addVoucher(@NonNull Voucher voucher) {
        if (!this.vouchers.contains(voucher)) {
            this.vouchers.add(voucher);
            voucher.getUsers().add(this);
            voucher.setUsers(voucher.getUsers());
        }
    }

    public void removeVoucher(@NonNull Voucher voucher) {
        if (this.vouchers.contains(voucher)) {
            this.vouchers.remove(voucher);
            voucher.getUsers().remove(this);
            voucher.setUsers(voucher.getUsers());
        }
    }

    public void addStaffOfShop(@NonNull Shop shop) {
        if (!this.staffOfShops.contains(shop)) {
            this.staffOfShops.add(shop);
            shop.getStaffs().add(this);
            shop.setStaffs(shop.getStaffs());
        }
    }

    public void removeStaffOfShop(@NonNull Shop shop) {
        if (this.staffOfShops.contains(shop)) {
            this.staffOfShops.remove(shop);
            shop.getStaffs().remove(this);
            shop.setStaffs(shop.getStaffs());
        }
    }
}
