import 'package:cu_guide/features/departments/model/department_model.dart';
import 'package:cu_guide/features/schedule/model/schedule_model.dart';
import 'package:cu_guide/features/slider/model/slider_model.dart';

//-----------------------------------------
//Slider List
//-----------------------------------------
final List<Slider> sliderList = [
  Slider(
    id: '1',
    name: 'Slider 1',
    imageUrl: 'assets/images/sliders/slider_01.png',
  ),
  Slider(
    id: '2',
    name: 'Slider 2',
    imageUrl: 'assets/images/sliders/slider_02.webp',
  ),
  Slider(
    id: '3',
    name: 'Slider 3',
    imageUrl: 'assets/images/sliders/slider_03.webp',
  ),
  Slider(
    id: '4',
    name: 'Slider 4',
    imageUrl: 'assets/images/sliders/slider_04.png',
  ),
  Slider(
    id: '5',
    name: 'Slider 5',
    imageUrl: 'assets/images/sliders/slider_05.png',
  ),
];


//-----------------------------------------
//Department List
//-----------------------------------------
final List<Department> staticDepartments = [
  Department(
    id: '01',
    name: 'Computer Science',
    description: 'Explore algorithms, AI, and app development.',
    iconUrl: 'assets/icons/computer.png',
  ),
  Department(
    id: '02',
    name: 'Physics',
    description: 'Study mechanics, quantum, and relativity.',
    iconUrl: 'assets/icons/physics.png',
  ),
  Department(
    id: '03',
    name: 'Biochemistry',
    description: 'Biological and chemical sciences combined.',
    iconUrl: 'assets/icons/biochem.png',
  ),
  Department(
    id: '04',
    name: 'Economics',
    description: 'Learn about money, markets, and policy.',
    iconUrl: 'assets/icons/economics.png',
  ),
];


//-----------------------------------------
//Schedule Data
//-----------------------------------------
final List<Schedule> trainScheduleList = [
  Schedule(
    id: '1',
    title: 'On Day',
    subtitle: 'Cu To Town',
    imageUrl: 'assets/images/cu_04.jpg',
  ),
  Schedule(
    id: '2',
    title: 'On Day',
    subtitle: 'Town To Campus',
    imageUrl: 'assets/images/cu_05.png',
  ),
  Schedule(
    id: '3',
    title: 'Off Day',
    subtitle: 'Cu To Town',
    imageUrl: 'assets/images/cu_04.jpg',
  ),
  Schedule(
    id: '4',
    title: 'Off Day',
    subtitle: 'Town To Campus',
    imageUrl: 'assets/images/cu_05.png',
  ),
];
