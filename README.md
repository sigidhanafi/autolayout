# Refreshing my autolayout knowledge
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


### UIStackView
There are some key point:
- axis (horizontal and vertical)
- distribution (fill, fillEqually, fillPorportionally)
- aligment
- spacing

Axis horizontal means, the leading edge of the first element of stackview will pinned to the stack's leading edge, and the last element trailing egde will pinned to the stack's trailing edge
Axis vertical means, the top edge of the first element of the stackview will pinned to the stack's top edge, and the last element bottom edge will pinned to the stack's bottom edge

```
notes:
If I have several view inside a stackview, and I set stackview distribution to fill, 
the stackview will only show the first of the element.
but If I set distribution to fillEqually or fillPorpotionally,
it will show all the view inside the stackview.
```

### Horizontal Axis & Vertical Axis

![Simulator Screen Shot - iPhone 13 - 2021-10-30 at 14 12 16](https://user-images.githubusercontent.com/5819701/139524250-77adbc96-9562-4611-8cbe-eaa0139c38e7.png)           ![Simulator Screen Shot - iPhone 13 - 2021-10-30 at 14 12 35](https://user-images.githubusercontent.com/5819701/139524280-54d76859-f27a-4bdb-b736-2336af25da8e.png)



### Create calculator view with UIStackview

- create UIStackview with axis, distribution and spacing

![Simulator Screen Shot - iPhone 13 - 2021-10-30 at 22 23 30](https://user-images.githubusercontent.com/5819701/139539336-23a7d961-3ecc-41bd-ad15-44f5c49f9c16.png)

How to achive this `zero button` twice bigger than `equal button`?

```
dotButton.widthAnchor.constraint(equalTo: equalButton.widthAnchor).isActive = true
zeroButton.widthAnchor.constraint(equalTo: equalButton.widthAnchor, multiplier: CGFloat(2)).isActive = true
```

<img width="150" alt="Screen Shot 2021-10-30 at 22 25 05" src="https://user-images.githubusercontent.com/5819701/139539442-4b17bcf8-b179-4bae-8339-49f48249d4d1.png">


```
notes:
its more convenience use stackview, instead of manual add constraint to view
```
