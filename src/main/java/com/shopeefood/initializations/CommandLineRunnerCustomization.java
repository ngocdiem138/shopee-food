package com.shopeefood.initializations;

import com.shopeefood.entities.Role;
import com.shopeefood.entities.User;
import com.shopeefood.repositories.*;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;

import java.util.ArrayList;
import java.util.List;

public class CommandLineRunnerCustomization {

    @Bean
    CommandLineRunner commandLineRunner(
            IBillRepository billRepository,
            IBillDetailRepository billDetailRepository,
            ICartRepository cartRepository,
            ICartDetailRepository cartDetailRepository,
            ICategoryRepository categoryRepository,
            ICountryRepository countryRepository,
            IDistrictRepository districtRepository,
            IEvaluationFoodRepository evaluationFoodRepository,
            IEvaluationShopRepository evaluationShopRepository,
            IFoodRepository foodRepository,
            ILocationRepository locationRepository,
            IProvinceRepository provinceRepository,
            IRoleRepository roleRepository,
            IShopRepository shopRepository,
            IShopFoodRepository shopFoodRepository,
            ITransportMoneyRepository transportMoneyRepository,
            IUserRepository userRepository,
            IVoucherRepository voucherRepository,
            IWardRepository wardRepository) {
        return args -> {

//            // USER
//            userRepository.saveAllAndFlush(() -> {
//                List<User> users = new ArrayList<>();
//                users.add(new User());
//                return users.iterator();
//            });
//
//            // ROLE
//            roleRepository.saveAllAndFlush(() -> {
//                List<Role> roles = new ArrayList<>();
//                roles.add(new Role());
//                return roles.iterator();
//            });
//

            // add
        };
    }

}
