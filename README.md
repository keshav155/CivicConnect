<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
***
***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** github_username, repo_name, twitter_handle, email..
-->





<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->


# CivicConnect
<br />
<br />
<t> <i> <font size=6>An app which connects local councils with their citizens </font> </i> </t>
<br />
<br />


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Contributions](#contributions)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

The goal of the project is to solve DELWP’s (Department of Environment, Land, Water and Planning) problem on how to measure Victoria’s progress towards a sustainable future with the voice of its citizens. They want to know what is important to a Victorian and are having difficulties with finding this information out exactly with the different perceptions people have. The organization does not entirely know on where they need to be focusing their efforts on to help them stay on track.  They lack the visibility about what the different perceptions are that Victorian’s have regarding liveability, thus, making it hard for them to respond to activities on a localized level. 

Right now, our solution displays the following:-
Our solution will target the main problems: -
<br />
•	Allowing every citizen of a community to give their opinion on a matter in an easy way
<br />
•	Keeping citizens updated with the latest news and decisions from their council
<br />
•	A way for any authority to prioritize which problems to focus on in their community based on different liveability factors
<br />
•	Detailed statistics on the input the citizens have provided to the authorities
<br />
•	Overall, improving the quality of life in Victoria through a digital application and easing the communications between the local council and citizens.

<!-- ABOUT THE PROJECT -->
## Design of the project

For our target audience being adults aging over 18, our design is meant to be __simple__ and __minimalistic__ , not requiring any fancy plugins, but mostly the standard Flutter ones and some 3rd party ones which have been verified to work well in the flutter community, helping us develop our application faster.

<br />
Images for the onboarding screen were taken from this <a href="https://www.flaticon.com/packs/politics-18?word=govern">flaticon pack</a>
<br />
Icons throughout the app which are noticeable in most of the screens were taken from <a href="https://material.io/resources/icons/?style=baseline">materials.io</a>




### Built With

* [Flutter](https://flutter.dev/)
* [Dart](https://dart.dev/)
* [Figma](https://www.figma.com/)



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You will have to install flutter into your machine. It is recommended to install Android studios as well and download an emulator or use your iphone/android to test the app.
<br />
Follow this series on youtube to do so :- <a href="https://www.youtube.com/watch?v=Z2ugnpCQuyw&t=3s">link (windows)</a>  , <a href="https://www.youtube.com/watch?v=hL7pkX1Pfko">link (mac)</a>

### Installation

1. Make a new folder in your machine and Clone the repo
```sh
git clone https://github.com/keshav155/CivicConnect.git
```

 2. Navigate to the folder, open Git and typing in the following command to install flutter dependencies
```sh
flutter packages get
```

3. Clean the build just in case
```sh
flutter clean
```

4. Run the application once you open your emulator or connect your phone

```sh
flutter run
```



<!-- USAGE EXAMPLES -->
## Usage

- For the initial user experience, at line 49 in main.dart, set the initial route on the onboarding screen
```sh
// New user experience
initialRoute: OnboardingScreen.id,
```
- To see the user's perspective of the application , make sure the initial route leads to the UserBottomNavigatorBarController as follows:-
```sh
initialRoute: UserBottomNavigationBarController.id,
```
- To see the clients's perspective of the application, make sure the initial route leads to the ClientBottomNavigatorBarController as follows:-
```sh
initialRoute: ClientBottomNavigationBarController.id,
```
- Each screen can be accessed individually but is not recommended to since some of the screens take data from the previous screens, this would be done as following:- 
```sh
// Accessing the settings screen
initialRoute: SettingsScreen.id,
```



<!-- CONTRIBUTING -->
## Contributions
[@ Keshav Singh](mailto:keshav1555@gmail.com)
<br />
- Developing the database and integrating the code from firestore with the front-end
- Developing the settings screen and location screen of the application
- Developing the navigation of the application
- Managing the team and helping everyone fix bugs and problems with front-end
- Documentation of work

[@ Jean Cho](mailto:choyej@deakin.edu.au)
<br />
- Developing and designing the onboarding process

[@ KINGSTON KENNEDY TANTANOUVONG](mailto:ktantanouvong@deakin.edu.au)
<br />
- Developing the voting system in the application for the user's side and responsible for the home screen as well

[@ Brendan Woods](mailto:bjwoods@deakin.edu.au)
<br />
- Developing the profile screen as well as taking care of personas 

[@ Quoc Thing Mai](mailto:qtmai@deakin.edu.au)
<br />
- Developing the forum screen and connecting it with the back-end of the application with a nested collection

[@ Wei Neng Chu](mailto:wnchu@deakin.edu.au)
<br />
- Developing the history screen and simplifying the process of sharing data between screens


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

[@ Civic Connect](mailto:keshav1555@gmail.com) - Email

Project Link: [https://github.com/keshav155/CivicConnect](https://github.com/keshav155/CivicConnect)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Markdown-Cheatsheet by Adam](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* [ReadME Tempalte by Othneil](https://github.com/othneildrew/Best-README-Template)





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo.svg?style=flat-square
[contributors-url]: https://github.com/github_username/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo.svg?style=flat-square
[forks-url]: https://github.com/github_username/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo.svg?style=flat-square
[stars-url]: https://github.com/github_username/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo.svg?style=flat-square
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo.svg?style=flat-square
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
[product-screenshot]: images/app-preview.gif
