package com.shopeefood.models.entities.composite.keys;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Data
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class CartDetailPK implements Serializable {

    @NotNull
    @Column(nullable = false)
    private Long cartId;
}
