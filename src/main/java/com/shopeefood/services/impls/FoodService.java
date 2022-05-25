package com.shopeefood.services.impls;

import com.shopeefood.models.entities.Food;
import com.shopeefood.repositories.IFoodRepository;
import com.shopeefood.services.IFoodService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class FoodService implements IFoodService {

    private final IFoodRepository foodRepository;

    @Override
    public Food save(Food food) {
        return foodRepository.save(food);
    }
}
