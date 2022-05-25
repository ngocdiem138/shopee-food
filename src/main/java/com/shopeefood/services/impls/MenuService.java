package com.shopeefood.services.impls;

import com.shopeefood.models.entities.Menu;
import com.shopeefood.repositories.IMenuRepository;
import com.shopeefood.services.IMenuService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class MenuService implements IMenuService {

    private final IMenuRepository menuRepository;

    @Override
    public Menu save(Menu menu) {
        return menuRepository.save(menu);
    }
}
