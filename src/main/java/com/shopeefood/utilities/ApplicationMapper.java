package com.shopeefood.utilities;

import com.shopeefood.models.dtos.*;
import com.shopeefood.models.entities.*;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;

import javax.validation.constraints.NotNull;

@Component
public class ApplicationMapper {

    ModelMapper modelMapper;

    public ApplicationMapper(ModelMapper modelMapper) {
        this.modelMapper = modelMapper;
    }

    public BillDto billToBillDto(@NotNull Bill entity) {
        return modelMapper.map(entity, BillDto.class);
    }

    public Bill billDtoToBill(@NotNull BillDto entity) {
        return modelMapper.map(entity, Bill.class);
    }

    public BillDetailDto billDetailToBillDetailDto(@NotNull BillDetail entity) {
        return modelMapper.map(entity, BillDetailDto.class);
    }

    public BillDetail billDetailDtoToBillDetail(@NotNull BillDetailDto entity) {
        return modelMapper.map(entity, BillDetail.class);
    }

    public CartDto cartToCartDto(@NotNull Cart entity) {
        return modelMapper.map(entity, CartDto.class);
    }

    public Cart cartDtoToCart(@NotNull CartDto entity) {
        return modelMapper.map(entity, Cart.class);
    }

    public CartDetailDto cartDetailToCartDetailDto(@NotNull CartDetail entity) {
        return modelMapper.map(entity, CartDetailDto.class);
    }

    public CartDetail cartDetailDtoToCartDetail(@NotNull CartDetailDto entity) {
        return modelMapper.map(entity, CartDetail.class);
    }

    public CategoryDto categoryToCategoryDto(@NotNull Category entity) {
        return modelMapper.map(entity, CategoryDto.class);
    }

    public Category categoryDtoToCategory(@NotNull CategoryDto entity) {
        return modelMapper.map(entity, Category.class);
    }

    public CountryDto countryToCountryDto(@NotNull Country entity) {
        return modelMapper.map(entity, CountryDto.class);
    }

    public Country countryDtoToCountry(@NotNull CountryDto entity) {
        return modelMapper.map(entity, Country.class);
    }

    public DistrictDto districtToDistrictDto(@NotNull District entity) {
        return modelMapper.map(entity, DistrictDto.class);
    }

    public District districtDtoToDistrict(@NotNull DistrictDto entity) {
        return modelMapper.map(entity, District.class);
    }

    public EvaluationFoodDto evaluationFoodToEvaluationFoodDto(@NotNull EvaluationFood entity) {
        return modelMapper.map(entity, EvaluationFoodDto.class);
    }

    public EvaluationFood evaluationFoodDtoToEvaluationFood(@NotNull EvaluationFoodDto entity) {
        return modelMapper.map(entity, EvaluationFood.class);
    }

    public EvaluationShopDto evaluationShopToEvaluationShopDto(@NotNull EvaluationShop entity) {
        return modelMapper.map(entity, EvaluationShopDto.class);
    }

    public EvaluationShop evaluationShopDtoToEvaluationShop(@NotNull EvaluationShopDto entity) {
        return modelMapper.map(entity, EvaluationShop.class);
    }

    public FoodDto foodToFoodDto(@NotNull Food entity) {
        return modelMapper.map(entity, FoodDto.class);
    }

    public Food foodDtoToFood(@NotNull FoodDto entity) {
        return modelMapper.map(entity, Food.class);
    }

    public LocationDto locationToLocationDto(@NotNull Location entity) {
        return modelMapper.map(entity, LocationDto.class);
    }

    public Location locationDtoToLocation(@NotNull LocationDto entity) {
        return modelMapper.map(entity, Location.class);
    }

    public MenuDto menuToMenuDto(@NotNull Menu entity) {
        return modelMapper.map(entity, MenuDto.class);
    }

    public Menu menuDtoToMenu(@NotNull Menu entity) {
        return modelMapper.map(entity, Menu.class);
    }

    public ProvinceDto provinceToProvinceDto(@NotNull Province entity) {
        return modelMapper.map(entity, ProvinceDto.class);
    }

    public Province provinceDtoToProvince(@NotNull Province entity) {
        return modelMapper.map(entity, Province.class);
    }

    public RoleDto roleToRoleDto(@NotNull Role entity) {
        return modelMapper.map(entity, RoleDto.class);
    }

    public Role roleDtoToRole(@NotNull RoleDto entity) {
        return modelMapper.map(entity, Role.class);
    }

    public ShopDto shopToShopDto(@NotNull Shop entity) {
        return modelMapper.map(entity, ShopDto.class);
    }

    public Shop shopDtoToShop(@NotNull ShopDto entity) {
        return modelMapper.map(entity, Shop.class);
    }

    public ShopFoodDto shopFoodToShopFoodDto(@NotNull ShopFood entity) {
        return modelMapper.map(entity, ShopFoodDto.class);
    }

    public ShopFood shopFoodDtoToShopFood(@NotNull ShopFoodDto entity) {
        return modelMapper.map(entity, ShopFood.class);
    }

    public TransportMoneyDto transportMoneyToTransportMoneyDto(@NotNull TransportMoney entity) {
        return modelMapper.map(entity, TransportMoneyDto.class);
    }

    public TransportMoney transportMoneyDtoToTransportMoney(@NotNull TransportMoneyDto entity) {
        return modelMapper.map(entity, TransportMoney.class);
    }

    public UserDto userToUserDto(@NotNull User entity) {
        return modelMapper.map(entity, UserDto.class);
    }

    public User userDtoToUser(@NotNull UserDto entity) {
        return modelMapper.map(entity, User.class);
    }

    public VoucherDto voucherToVoucherDto(@NotNull Voucher entity) {
        return modelMapper.map(entity, VoucherDto.class);
    }

    public Voucher voucherDtoToVoucher(@NotNull VoucherDto entity) {
        return modelMapper.map(entity, Voucher.class);
    }

    public WardDto wardToWardDto(@NotNull Ward entity) {
        return modelMapper.map(entity, WardDto.class);
    }

    public Ward wardDtoToWard(@NotNull WardDto entity) {
        return modelMapper.map(entity, Ward.class);
    }
}
