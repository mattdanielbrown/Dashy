# Dashy
Everything in one place (news, weather, stocks and much more)

*I tried to follow MVVM Pattern, Used Decodable And URLSession instead of thrid-pary libraries like (SwiftyJSON and Alamofire), I'll be replacing SDWebImage with AsyncImage once MacOS Monterey is officially Released*

![Screen Shot 2021-10-13 at 5 16 33 PM](https://user-images.githubusercontent.com/43297314/137213961-4b86391e-f65f-4815-be0e-266129b86f97.png)

![Screen Shot 2021-10-13 at 5 15 39 PM](https://user-images.githubusercontent.com/43297314/137213971-691922e4-7ce4-4892-a66c-0ff81b8ea099.png)

![Screen Shot 2021-10-13 at 5 15 45 PM](https://user-images.githubusercontent.com/43297314/137213975-152c14d2-a178-4bbc-a229-164f676f5375.png)


Here's the Folder Structure info:

- Model: Stores Data Type for each DataType (stocks, weather and news)

- ViewModel: Fetches json data from api and converts it into Model and stores it in @Publised variables

- View: Displaying Views
