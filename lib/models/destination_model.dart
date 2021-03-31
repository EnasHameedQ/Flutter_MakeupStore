import 'package:makeupstore/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/p1.jpg',
    name: 'mancare&bodycare',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/p1.jpg',
    name: 'perfume',
    type: 'chaneel',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/p1.jpg',
    name: 'fantazia',
    type: 'makeup',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/200.webp',
    city: 'Venice',
    country: 'Italy',
    description: 'your best makeup for yor skin.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/200w.webp',
    city: 'Paris',
    country: 'France',
    description: 'your best makeup for yor skin.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/mabakground.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'your best makeup for yor skin.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/mabakground.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'your best makeup for yor skin.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/mabakground.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'your best makeup for yor skin',
    activities: activities,
  ),
];
