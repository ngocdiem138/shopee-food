package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.User;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RoleDto {

    @NotNull
    private Long id;

    private String name;

    private String description;

    @ToString.Exclude
    private List<User> users = new ArrayList<>();
}
