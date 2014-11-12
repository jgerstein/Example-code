//white background
background(255);

//blue-gray fill is (160, 190, 220)
//greenish fill is  (0, 150, 130)


///////////////////////////////////////
//                                   //
//            draw limbs             //
//                                   //
///////////////////////////////////////
//neck
line(50, 40, 50, 45);

//left arm
line(60, 45, 70, 45);

//right arm
line(40, 45, 30, 45);

//left leg
line(60, 65, 60, 75);

//right leg
line(40, 65, 40, 75);

///////////////////////////////////////
//                                   //
//        bluish body shapes         //
//                                   //
///////////////////////////////////////
fill(160, 190, 220);

//head
ellipse(50, 30, 20, 20);

//body
rect(40, 45, 20, 20);

///////////////////////////////////////
//                                   //
//       green hands and feet        //
//                                   //
///////////////////////////////////////
fill(0, 150, 130);

//left hand
ellipse(75, 45, 10, 10);

//right hand
ellipse(25, 45, 10, 10);

//left foot
arc(60, 80, 10, 10, PI, TWO_PI, CHORD);

//right foot
arc(40, 80, 10, 10, PI, TWO_PI, CHORD);

///////////////////////////////////////
//                                   //
//             details               //
//                                   //
///////////////////////////////////////
fill(255);

//eyes
ellipse(45, 28, 3, 5);
ellipse(55, 28, 3, 5);

//mouth
line(45, 35, 55, 35);

//disk slot
line(45, 50, 55, 50);

//reset button
ellipse(55, 55, 5, 5);
