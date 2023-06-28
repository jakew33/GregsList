namespace GregsList.Services;

public class HousesService
{
  private readonly HousesRepository _repo;

  public HousesService(HousesRepository repo)
  {
    _repo = repo;
  }

  internal House CreateHouse(House houseData)
  {
    House house = _repo.CreateHouse(houseData);
    return house;
  }

  internal List<House> GetAllHouses()
  {
    List<House> houses = _repo.GetAllHouses();
    return houses;
  }

  internal House GetById(int houseId)
  {
    House house = _repo.GetById(houseId);
    if (house == null) throw new Exception($"no house at Id:{houseId}");
    return house;
  }

  internal House UpdateHouse(House updateData)
  {
    House original = GetById(updateData.Id);

    // original.Description = updateData.Description != null ? updateData.Description : original.Description;
    // original.Rooms = updateData.Rooms != null ? updateData.Rooms : original.Rooms;
    // original.Bathrooms = updateData.Bathrooms != null ? updateData.Bathrooms : original.Bathrooms;
    // original.Floors = updateData.Floors != null ? updateData.Floors : original.Floors;
    // original.Price = updateData.Price != null ? updateData.Price : original.Price;

    _repo.UpdateHouse(original);
    return original;
  }

  internal string RemoveHouse(int houseId)
  {
    House house = GetById(houseId);

    int rows = _repo.RemoveHouse(houseId);
    if (rows > 1) throw new Exception("House Deleted");

    return $"House {house.Description} & {house.Price}.";
  }
}