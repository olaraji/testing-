
void main(List<String> arguments) {
  User user1 = User();
  print(user1.firstName);
  DataController f = DataController();
  print(f.init());
  GuideSuggestionController w = GuideSuggestionController();
  print(w.suggest());

}
class User{
  String firstName = "John";
  String sex = "Male";
  String dob = "1990-01-01";
}


class DataController {
  StorageController storage = StorageController();
  dynamic init(){
    return storage;
  }
  initConnection(){
    return "Connected";
  }
  updateData(){
    return "Data Updated";
  }
  get(){
    return "Data Retrieved";
  }
  set(){
    return "Data Set";
  }

}

class StorageController{
  init(){
    return;
  }
  initConnection(){
    return "Connected";
  }
  updateData(){
    return "Data Updated";
  }
  get(){
    return "Data Retrieved";
  }
  set(){
    return "Data Set";
  }
}


class Guide  {
  String title = "Guide 1";
  String description = "This is a new guide";
  String mainImage = "New Image";
 // List <GuidePage> pages;
  Guide(this.title, this.description,this.mainImage);
}

class GuidePage extends Guide{
  String title = "Guide Page Title";
  String content = "This is a new guide page";
  String image = "New Image ";
  int pageType = 5;

  GuidePage(super.title, super.description, super.mainImage,this.content);
}


class SearchResult extends ResourceManager{ 
  String getSearchResult(){
    return "Edmonton Clinic is the closest to you";
  }
}



class ResourceList{
  List resources = ["Edmonton Health clinic", "Alberta Health Services", "Personal doctor"];
  List onlineResources = ["www.edhealth.com ", "www.ahs.com", "www.personaldoctor.com"];

  getSortedByNearbyLocation(){
    return "Edmonton Health Clinic is closest to you";
  }
}




class QuizPage {
  String questionTitle = "How long does it take to make a baby?";
  List<String> options = ["12 months ", "18 months ", "9 months"];
  String correctAnswer = "9 months";
  String explanation  = "9 months is the correct answer beacuse that is the average time it takes to have a baby";
}

class Pages{
  // GuidePage guidePage = GuidePage();
  QuizPage quizPage = QuizPage();
}

class SRHApp{
  ResourceManager resourceManager = ResourceManager();
  ViewManager viewManager = ViewManager();

  List<String> users = ["Ben", "John", "Kylie"];


 String userSignUp(){
    return "User Signed Up";
  }

  bool searching(){
    return true;
  }

  help(){
    return "Welcome to Help";
  }
}



class ResourceManager{
  //ResourceManager resourceManager = ResourceManager();
  //LocationController locationController = LocationController();
  //DataController dataController = DataController();
 // MapsAPIController maps = MapsAPIController();

  get(){
    return "Most useful resource: Edmonton Health Clinic";
  }
}


class Resource{
  String title = "Introduction to Pregnancy";
  String description = "A simplified explanations about how babies are born.,";
  String mainImage = "A baby"; 
  String category = "Category 2";
  String minicon = "New mini icon" ;
  String mainMapImage = "New map image";
  String location = "Edmonton";
  String phone = "5671243890";
  String website = "www.reproduction.com";
  String hours = "9am - 5pm";
//   List<ResourceService> resourceServices 
 }


class LocationController{
  shareLocation(){
    return false;
  }
  receiveRecommendations(){
    return true;
  }
}


class SearchContoller{
  // ResourceManager resources ;

  searchByKeyword(){
    return SearchResult;
  }
}


class ResourceService{
  String name = "Edmonton Health Clinic";
  String website = "www.edmontonhealthclinic.com";
}

class MapsAPIController{
  init(){
    return;
  }
  getUserInteraction(){
    return true;
  }
  getMapContainer(){
    return "Map Container";
  }
}

class GuideSuggestionController{
  suggest(){
    return "Suggestions available are: Edmonton Health Clinic, Alberta Health Services, Personal Doctor";
  }
}

class ViewManager{
}

