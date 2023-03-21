part of gcanvas_base;

class Address extends address.Address {
  const Address(
    addressLine1,
    addressLine2,
    city,
    postalCode,
    {country = 'New Zealand'})
  : super(
    addressLine1: addressLine1,
    addressLine2: addressLine2,
    city: city,
    postalCode: postalCode,
    country: country);
}
