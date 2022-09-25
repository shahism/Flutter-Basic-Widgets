# Assets
- Resources that we use in our Apps
## Types
- Static data (JSON Files)
- Images (png , jpeg , jpg , webP)
- Icons (Vectors in .svg format)
- Videos (mp4)
- Audios (mp3 ,ogg)
- Fonts ()
- illustrations (GIF or .svg)


# Updating the App Icon

- In your Flutter project’s root directory, navigate to .../`android/app/src/main/res` 
- The various bitmap resource folders such as mipmap-hdpi already contain placeholder images named ic_launcher.png. Replace them with your desired assets respecting the recommended icon size per screen density.

- for this use [AppIcon.co](https://appicon.co/) for getting the desired folders



# Updating the Splash Screen

- install `flutter_native_splash` from flutter pub
- make `flutter_native_splash.yaml` file as directed by the the documentation
- use image property to be the logo that will appear in the center
- use background-image or color property for background

## isse zyada optimize krne k liay native Jana hoga!