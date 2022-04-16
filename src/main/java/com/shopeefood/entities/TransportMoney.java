package com.shopeefood.entities;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ColumnDefault;

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
public class TransportMoney extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    @SequenceGenerator(
            name = "transport_money_sequence",
            sequenceName = "transport_money_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = SEQUENCE, generator = "transport_money_sequence")
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

    public void addBill(@NonNull Bill bill) {
        if (!this.bills.contains(bill)) {
            this.bills.add(bill);
            bill.setTransportMoney(this);
        }
    }

    public void removeBill(@NonNull Bill bill) {
        if (this.bills.contains(bill)) {
            this.bills.remove(bill);
            bill.setTransportMoney(null);
        }
    }
}
