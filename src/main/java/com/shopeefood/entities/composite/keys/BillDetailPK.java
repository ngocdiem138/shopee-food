package com.shopeefood.entities.composite.keys;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Data
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class BillDetailPK implements Serializable {

    @Column(nullable = false)
    private Long foodId;

    @Column(nullable = false)
    private Long billId;
}
