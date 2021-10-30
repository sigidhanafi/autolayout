# refresing my autolayout knowledge
I want to refresh my knowledge about autolayout programatically with constrain (pin, alignment, adn stackview)

### Image with constrain

In this screen, I create title label, wrapped by topcontainer.
topContainer have constrain x = top view, y = middle of view minus size of menu

Then I create middleContainer, that contain two menu. The first menu is about menu, the second is code menu.
These menu have same position, center of the middle container.

learning point:
- `translatesAutoresizingMaskIntoConstraints` Bool, if it true, then we can't add constraint to modify size or position.
- we can set constrain position, top, bottom, left, right
- we can get width and height of screen with property of `UIScreen.main.bounds.width` and `UIScreen.main.bounds.height`

![Simulator Screen Shot - iPhone 13 - 2021-10-29 at 08 41 14](https://user-images.githubusercontent.com/5819701/139359614-6f2c3cb4-be3e-4e5d-8c56-c3ae0a0c01a9.png) ![Simulator Screen Shot - iPhone 13 - 2021-10-29 at 08 40 59](https://user-images.githubusercontent.com/5819701/139359555-015121c1-f60c-44bf-8c87-2add7c72c519.png)
