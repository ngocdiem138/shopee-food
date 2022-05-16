package com.shopeefood.models.entities;

import com.shopeefood.types.Gender;
import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.GenerationType.SEQUENCE;
import static lombok.AccessLevel.NONE;
import static org.hibernate.annotations.CascadeType.ALL;

@Getter
@Setter
@Entity
@Builder
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
}
