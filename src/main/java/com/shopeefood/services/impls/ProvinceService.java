package com.shopeefood.services.impls;

import com.querydsl.core.Tuple;
import com.shopeefood.models.entities.District;
import com.shopeefood.models.entities.Province;
import com.shopeefood.models.entities.Shop;
import com.shopeefood.repositories.IProvinceRepository;
import com.shopeefood.services.IProvinceService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class ProvinceService implements IProvinceService {
    private final IProvinceRepository provinceRepository;
    @Override
    public List<Province> getAllProvince() {
        return provinceRepository.findAll();
    }

    @Override
    public Long countProvince() {
        return provinceRepository.count();
    }

    @Override
    public List<Tuple> countShopInProvince() {
        return provinceRepository.countShopInProvince();
    }

    @Override
    public List<Shop> getListShopByProvince(String newName) {
        return provinceRepository.getListShopByProvince(newName);
    }
    @Override
    public List<District> getListDistrictByProvince(String newName) {
        return provinceRepository.getListDistrictByProvince(newName);
    }

    public Province getProvinceByName(String name) {
        return provinceRepository.findByName(name);
    }

    public Tuple getShopByProvince(String name) {
        return provinceRepository.getShopByProvince(name);
    }
}
