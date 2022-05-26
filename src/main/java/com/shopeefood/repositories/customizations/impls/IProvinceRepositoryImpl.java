package com.shopeefood.repositories.customizations.impls;

import com.querydsl.core.Tuple;
import com.querydsl.core.types.dsl.Expressions;
import com.querydsl.core.types.dsl.NumberPath;
import com.querydsl.jpa.impl.JPAQuery;
import com.shopeefood.models.entities.*;
import com.shopeefood.repositories.customizations.IProvinceRepositoryCustom;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class IProvinceRepositoryImpl implements IProvinceRepositoryCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Tuple> countShopInProvince() {
        NumberPath<Long> count = Expressions.numberPath(Long.class, "count");
        NumberPath<Long> id = Expressions.numberPath(Long.class, "id");
        String name = "name";
        List<Tuple> userTitleCounts= new JPAQuery<Province>(em)
                .from(QProvince.province)
                .innerJoin(QProvince.province.districts, QDistrict.district)
                .innerJoin(QDistrict.district.wards, QWard.ward)
                .innerJoin(QWard.ward.locations, QLocation.location)
                .innerJoin (QLocation.location.shops, QShop.shop)
                .groupBy(QProvince.province)
                .select(QProvince.province.id.as(id), QProvince.province.name.as(name), QShop.shop.id.count().as(count))
                .fetch();
        System.out.println(userTitleCounts.get(0).get(count));
        return userTitleCounts;
    }

    @Override
    public Province findByName(String name) {
        return new JPAQuery<Province>(em)
                .from(QProvince.province)
                .where(QProvince.province.name.eq(name))
                .fetchOne();
    }

    @Override
    public Tuple getShopByProvince(String nameProvince) {
        NumberPath<Long> count = Expressions.numberPath(Long.class, "count");
        NumberPath<Long> id = Expressions.numberPath(Long.class, "id");
        String name = "name";
        String shops = "shops";
        String idShops = "idShops";
        return new JPAQuery<Province>(em)
                .from(QProvince.province)
                .innerJoin(QProvince.province.districts, QDistrict.district)
                .innerJoin(QDistrict.district.wards, QWard.ward)
                .innerJoin(QWard.ward.locations, QLocation.location)
                .innerJoin (QLocation.location.shops, QShop.shop)
                .groupBy(QProvince.province)
                .select(QProvince.province.id.as(id), QProvince.province.name.as(name), QShop.shop.id.count().as(count), QShop.shop.id.as(idShops))
                .where(QProvince.province.name.eq(nameProvince))
                .fetchOne();
    }

    @Override
    public List<Shop> getListShopByProvince(String nameProvince) {
        return new JPAQuery<Shop>(em)
                .from(QShop.shop)
                .innerJoin(QShop.shop.location, QLocation.location)
                .innerJoin(QLocation.location.ward, QWard.ward)
                .innerJoin(QWard.ward.district, QDistrict.district)
                .innerJoin(QDistrict.district.province, QProvince.province)
                .where(QProvince.province.name.eq(nameProvince))
                .fetch();
    }

    @Override
    public List<District> getListDistrictByProvince(String nameProvince) {
        return new JPAQuery<District>(em)
                .from(QDistrict.district)
                .innerJoin(QDistrict.district.province, QProvince.province)
                .where(QProvince.province.name.eq(nameProvince))
                .fetch();
    }


}
