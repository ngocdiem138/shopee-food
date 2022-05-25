package com.shopeefood.models.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;

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
public class TransportMoney extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @GeneratedValue(strategy = IDENTITY)
    private Long id;

    @ColumnDefault("0.0")
    @Column(nullable = false)
    private Double distance;

    @ColumnDefault("0.0")
    @Column(nullable = false)
    private Double money;

    @Cascade(ALL)
    @ToString.Exclude
    @OneToMany(mappedBy = "transportMoney")
    private List<Bill> bills = new ArrayList<>();
}
