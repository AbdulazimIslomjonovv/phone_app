abstract class Phone{
  void call();
  void message();
  bool simCard();

}
mixin IOS{
  void system(int a){
    print("System : IOS $a");
  }
}
mixin Android{
  void system(int a){
    print("System Android $a");
  }
}
mixin WindowsMobile{
  void system(){
    print("System Windows Mobile");
  }
}
mixin Camer{
  void Cam(bool res){
    if(res){
      print("Front camera is on");

    }else{
      print("Front camera is off");

    }
  }
}

mixin Enthernet{
  void Internet(bool res){
    if(res){
      print("Internet is on");
    }else{
      print('Intrenet is off');
    }
  }

}
mixin GPS{
  void GpS(bool res){
    if(res){
      print("GPS is on");
    }else{
      print("GPS is off");
    }
  }
}
