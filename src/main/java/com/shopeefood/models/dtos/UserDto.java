package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.*;
import com.shopeefood.types.Gender;
import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserDto {

    @NotNull
    private Long id;

    @Email
    private String email;

    private String password;

    private String name;

    private Timestamp dob;

    private Gender gender;

    private String phone;

    private String idCardNumber;

    private Boolean status;

    private Role role;

    private Location location;

    @ToString.Exclude
    private List<Cart> carts = new ArrayList<>();

    @ToString.Exclude
    private List<EvaluationFood> evaluationFoods = new ArrayList<>();

    @ToString.Exclude
    private List<EvaluationShop> evaluationShops = new ArrayList<>();

    @ToString.Exclude
    private List<Shop> bossOfShops = new ArrayList<>();

    @ToString.Exclude
    private List<Voucher> vouchers = new ArrayList<>();

    @ToString.Exclude
    private List<Shop> staffOfShops = new ArrayList<>();
}
