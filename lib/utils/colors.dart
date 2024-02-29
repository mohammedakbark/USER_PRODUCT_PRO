import 'package:flutter/material.dart';

Color orderstatusColor(String status) {
  switch (status) {
    case "PENDING":
      return Colors.amber;

    case "REJECTED":
      return Colors.grey;

    case "COMPLETED":
      return Colors.green;
    default:
      return Colors.black;
  }
}


Color warrentyStatusColor(String status) {
  switch (status) {
    case "PENDING":
      return Colors.amber;

    case "REJECTED":
      return Colors.grey;

    case "APPROVED":
      return Colors.green;
    default:
      return Colors.black;
  }
}