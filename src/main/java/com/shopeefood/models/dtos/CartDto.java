package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.CartDetail;
import com.shopeefood.models.entities.User;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CartDto {

    @NotNull
    private Long id;

    private User user;

    @ToString.Exclude
    private List<CartDetail> cartDetails = new ArrayList<>();
}
