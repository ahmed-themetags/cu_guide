import 'package:cu_guide/features/departments/model/department_model.dart';
import 'package:cu_guide/features/faculties/model/faculty_model.dart';
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
//Faculty List
//-----------------------------------------
final List<Faculty> facultyList = [
  Faculty(
    id: '01',
    name: 'কলা ও মানবিক বিভাগ',
    shortDescription: 'সংস্কৃতি, ইতিহাস ও ভাষা',
    description: 'Explore global literature, cultural heritage, philosophy, and languages.',
    imageUrl: 'assets/images/faculties/arts.jpg',
  ),
  Faculty(
    id: '02',
    name: 'বিজ্ঞান বিভাগ',
    shortDescription: 'পদার্থবিজ্ঞান, রসায়ন ও গণিত',
    description: 'Study mechanics, quantum theory, chemistry, and advanced mathematics.',
    imageUrl: 'assets/images/faculties/science.jpg',
  ),
  Faculty(
    id: '03',
    name: 'ব্যবসায় প্রশাসন বিভাগ',
    shortDescription: 'ব্যবসা, অর্থনীতি ও ব্যবস্থাপনা',
    description: 'Learn finance, marketing, human resources, and entrepreneurship skills.',
    imageUrl: 'assets/images/faculties/bba.jpg',
  ),
  Faculty(
    id: '04',
    name: 'সামাজিক বিজ্ঞান বিভাগ',
    shortDescription: 'সমাজ, রাজনীতি ও মানুষ',
    description: 'Study sociology, political science, anthropology, and psychology.',
    imageUrl: 'assets/images/faculties/social_science.jpg',
  ),
  Faculty(
    id: '05',
    name: 'আইন বিভাগ',
    shortDescription: 'আইন, ন্যায় ও অধিকার',
    description: 'Learn about constitutional law, human rights, and international law.',
    imageUrl: 'assets/images/faculties/law.jpg',
  ),
  Faculty(
    id: '06',
    name: 'জীববিজ্ঞান বিভাগ',
    shortDescription: 'জীবন, প্রকৃতি ও জেনেটিক্স',
    description: 'Explore botany, zoology, microbiology, and biotechnology.',
    imageUrl: 'assets/images/faculties/biological_science.jpg',
  ),
  Faculty(
    id: '07',
    name: 'ইঞ্জিনিয়ারিং বিভাগ',
    shortDescription: 'ডিজাইন, নির্মাণ ও উদ্ভাবন',
    description: 'Learn civil, mechanical, electrical, and computer engineering.',
    imageUrl: 'assets/images/faculties/engineering.jpg',
  ),
  Faculty(
    id: '08',
    name: 'শিক্ষা বিভাগ',
    shortDescription: 'শিক্ষা ও পঠনপাঠন পদ্ধতি',
    description: 'Focus on curriculum development, teacher training, and education systems.',
    imageUrl: 'assets/images/faculties/education.jpg',
  ),
  Faculty(
    id: '09',
    name: 'সমুদ্র বিজ্ঞান ও মৎস্য বিভাগ',
    shortDescription: 'সমুদ্র, মাছ ও экোসিস্টেম',
    description: 'Study marine ecosystems, fisheries science, and oceanography.',
    imageUrl: 'assets/images/faculties/science_fisheries.jpg',
  ),
  Faculty(
    id: '10',
    name: 'চিকিৎসা বিভাগ',
    shortDescription: 'স্বাস্থ্য, পরিচর্যা ও গবেষণা',
    description: 'Learn anatomy, physiology, pharmacology, and clinical practices.',
    imageUrl: 'assets/images/faculties/cu_gate.jpg',
  ),
];

// final List<Faculty> facultyList = [
//   Faculty(
//     id: '01',
//     name: 'Faculty of Arts and Humanities',
//     shortDescription: 'Culture, history & language',
//     description: 'Explore global literature, cultural heritage, philosophy, and languages.',
//     imageUrl: 'assets/images/faculties/arts.jpg',
//   ),
//   Faculty(
//     id: '02',
//     name: 'Faculty of Science',
//     shortDescription: 'Physics, chemistry & math',
//     description: 'Study mechanics, quantum theory, chemistry, and advanced mathematics.',
//     imageUrl: 'assets/images/faculties/science.jpg',
//   ),
//   Faculty(
//     id: '03',
//     name: 'Faculty of Business Administration',
//     shortDescription: 'Business, finance & management',
//     description: 'Learn finance, marketing, human resources, and entrepreneurship skills.',
//     imageUrl: 'assets/images/faculties/bba.jpg',
//   ),
//   Faculty(
//     id: '04',
//     name: 'Faculty of Social Sciences',
//     shortDescription: 'Society, politics & people',
//     description: 'Study sociology, political science, anthropology, and psychology.',
//     imageUrl: 'assets/images/faculties/social_science.jpg',
//   ),
//   Faculty(
//     id: '05',
//     name: 'Faculty of Law',
//     shortDescription: 'Law, justice & rights',
//     description: 'Learn about constitutional law, human rights, and international law.',
//     imageUrl: 'assets/images/faculties/law.jpg',
//   ),
//   Faculty(
//     id: '06',
//     name: 'Faculty of Biological Sciences',
//     shortDescription: 'Life, nature & genetics',
//     description: 'Explore botany, zoology, microbiology, and biotechnology.',
//     imageUrl: 'assets/images/faculties/biological_science.jpg',
//   ),
//   Faculty(
//     id: '07',
//     name: 'Faculty of Engineering',
//     shortDescription: 'Design, build & innovate',
//     description: 'Learn civil, mechanical, electrical, and computer engineering.',
//     imageUrl: 'assets/images/faculties/engineering.jpg',
//   ),
//   Faculty(
//     id: '08',
//     name: 'Faculty of Education',
//     shortDescription: 'Learning & teaching methods',
//     description: 'Focus on curriculum development, teacher training, and education systems.',
//     imageUrl: 'assets/images/faculties/education.jpg',
//   ),
//   Faculty(
//     id: '09',
//     name: 'Faculty of Marine Sciences and Fisheries',
//     shortDescription: 'Oceans, fish & ecosystems',
//     description: 'Study marine ecosystems, fisheries science, and oceanography.',
//     imageUrl: 'assets/images/faculties/science_fisheries.jpg',
//   ),
//   Faculty(
//     id: '10',
//     name: 'Faculty of Medicine',
//     shortDescription: 'Health, care & research',
//     description: 'Learn anatomy, physiology, pharmacology, and clinical practices.',
//     imageUrl: 'assets/images/faculties/cu_gate.jpg',
//   ),
// ];


//-----------------------------------------
//Schedule Data
//-----------------------------------------
final List<Schedule> trainScheduleList = [
  Schedule(
    id: '1',
    // title: 'On Day',
    title: 'অন ডে',
    // subtitle: 'Cu To Town',
    subtitle: 'ক্যাম্পাস থেকে শহর',
    imageUrl: 'assets/images/cu_04.jpg',
    schedules: [
      '৮:৪০ AM (ষোলোশহর)',
      '৯:০৫ AM (ষোলোশহর)',
      '১০:৩০ AM (ষোলোশহর)',
      '১২:০০ PM',
      '২:০০ PM',
      '৩:৩০ PM',
      '৪:২০ PM',
      '৬:০০ PM',
      '৮:৪০ PM',
      '৯:২০ PM',
    ],
  ),
  Schedule(
    id: '2',
    // title: 'On Day',
    title: 'অন ডে',
    // subtitle: 'Town To Campus',
    subtitle: 'শহর থেকে ক্যাম্পাস',
    imageUrl: 'assets/images/cu_05.png',
    schedules: [
      '৭:১৫ AM',
      '৭:৪০ AM',
      '৯:৩০ AM (ষোলোশহর)',
      '১০:১০ AM',
      '১১:০০ AM (ষোলোশহর)',
      '১১:৩০ AM (ষোলোশহর)',
      '২:০০ PM',
      '৪:০০ PM',
      '৫:৩০ PM',
      '৮:০০ PM',
    ],
  ),
  Schedule(
    id: '3',
    // title: 'Off Day',
    title: 'অফ ডে',
    // subtitle: 'Cu To Town',
    subtitle: 'ক্যাম্পাস থেকে শহর',
    imageUrl: 'assets/images/cu_04.jpg',
    schedules: [
      '৯:০৫ AM (ষোলোশহর)',
      '৪:৪০ PM',
      '৯:৪৫ PM',
    ],
  ),
  Schedule(
    id: '4',
    // title: 'Off Day',
    title: 'অফ ডে',
    // subtitle: 'Town To Campus',
    subtitle: 'শহর থেকে ক্যাম্পাস',
    imageUrl: 'assets/images/cu_05.png',
    schedules: [
      '৭:৪০ AM',
      '৩:০০ PM',
      '৮:৩০ PM',
    ],
  ),
];
