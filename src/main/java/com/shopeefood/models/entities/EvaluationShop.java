package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import javax.persistence.*;

import static javax.persistence.GenerationType.SEQUENCE;
import static lombok.AccessLevel.NONE;

@Table
@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class EvaluationShop extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "evaluation_shop_sequence",
            sequenceName = "evaluation_shop_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "evaluation_shop_sequence")
    private Long id;

    @ColumnDefault("0")
    @Column(name = "level_star", nullable = false)
    private Integer levelStar;

    @Lob
    @Column
    @Nationalized
    private String comment;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "evaluation_shop_user_id_fk"))
    private User user;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "evaluation_shop_shop_id_fk"))
    private Shop shop;
}
