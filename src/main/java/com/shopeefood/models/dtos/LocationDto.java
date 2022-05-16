package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Shop;
import com.shopeefood.models.entities.User;
import com.shopeefood.models.entities.Ward;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LocationDto {

    @NotNull
    private Long id;

    private String name;

    private Ward ward;

    @ToString.Exclude
    private List<User> users = new ArrayList<>();

    @ToString.Exclude
    private List<Shop> shops = new ArrayList<>();
}
