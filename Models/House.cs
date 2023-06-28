namespace GregsList.Models;

public class House{
  public int Id { get; set;}
  public int Description { get; set;}
  public int Floors { get; set;}
  public int Rooms { get; set;}
  public int Bathrooms { get; set;}
  public int Price { get; set;}

  public DateTime CreatedAt { get; set; }
  public DateTime UpdatedAt { get; set; }
}