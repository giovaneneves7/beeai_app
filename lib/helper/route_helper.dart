import 'dart:convert';

import 'package:beeai/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
*
* @author Giovane Neves
*
 */
class RouteHelper{

  static const String home         = '/home';
  static const String notification = '/notification';
  static const String onboarding   = '/onboarding';

  static String getHomeScreen()         => home;
  static String getNotificationScreen() => notification;
  static String getOnboardingScreen()   => onboarding;

  // Registro de rotas [ Adicionar todas as rotas do app aqui ] 
  static List<GetPage> routes = [

    GetPage(name: home, page: () => HomeScreen()),
  	//GetPage(name: notification, page: () => NotificationScreen()),
    GetPage(name: onboarding, page: () => OnboardingScreen()),

  ];

}