package com.shopeefood.entities.composite.keys;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Getter
@Setter
@ToString
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class BillDetailPK implements Serializable {

    @Column(nullable = false)
    private Long foodId;

    @Column(nullable = false)
    private Long billId;
}
