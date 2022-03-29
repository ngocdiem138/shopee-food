package com.shopeefood.repositories;

import com.shopeefood.entities.District;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IDistrictRepository extends JpaRepository<District, Long> {
}
