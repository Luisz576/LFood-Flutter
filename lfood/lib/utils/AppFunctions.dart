class AppFunctions{

  static String getWithFirstLetterUpperCase(value){
    if(value != null)
      if(value.toString().length > 1)
        return "${value.toString().substring(0, 1).toUpperCase()}${value.toString().substring(1)}";
      else
        return "${value.toString().toUpperCase()}";
    else
      return "";
  }

}