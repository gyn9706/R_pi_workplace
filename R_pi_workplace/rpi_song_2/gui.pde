/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox1:696418:
  option_ds();
 if((led_buf & 0x01) != 0x01) led_buf |= 0x01;
 else led_buf &= 0xfe; 
 byte_out(0xff-led_buf);
} //_CODE_:checkbox1:696418:

public void checkbox2_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox2:484896:
  option_ds();
  if((led_buf & 0x02) != 0x02) led_buf |= 0x02; 
  else led_buf &= 0xfd;
  byte_out(0xff-led_buf);
} //_CODE_:checkbox2:484896:

public void checkbox3_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox3:313654:
  option_ds();
  if((led_buf & 0x04) != 0x04) led_buf |= 0x04; 
  else led_buf &= 0xfb;
  byte_out(0xff-led_buf);
} //_CODE_:checkbox3:313654:

public void checkbox4_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox4:394795:
   option_ds();
  if((led_buf & 0x08) != 0x08) led_buf |= 0x08;
  else led_buf &= 0xf7;
  byte_out(0xff-led_buf);
} //_CODE_:checkbox4:394795:

public void checkbox5_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox5:689745:
  option_ds();
  if((led_buf & 0x10) != 0x10) led_buf |= 0x10; 
  else led_buf &= 0xef;
  byte_out(0xff-led_buf);
} //_CODE_:checkbox5:689745:

public void checkbox6_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox6:985107:
   option_ds();
  if((led_buf & 0x20) != 0x20) led_buf |= 0x20; 
  else led_buf &= 0xdf;
  byte_out(0xff-led_buf);
} //_CODE_:checkbox6:985107:

public void checkbox7_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox7:733000:
   option_ds();
  if((led_buf & 0x40) != 0x40) led_buf |= 0x40;
  else led_buf &= 0xbf;
  byte_out(0xff-led_buf);
} //_CODE_:checkbox7:733000:

public void checkbox8_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox8:819552:
   option_ds();
  if((led_buf & 0x80) != 0x80) led_buf |= 0x80; 
  else led_buf &= 0x7f;
  byte_out(0xff-led_buf);
} //_CODE_:checkbox8:819552:

public void option1_clicked1(GOption source, GEvent event) { //_CODE_:option1:832139:
  chk_ds(); 
 led_buf = 0x01;
 checkbox1.setSelected(true);
 byte_out(0xff-led_buf);
} //_CODE_:option1:832139:

public void option2_clicked1(GOption source, GEvent event) { //_CODE_:option2:515827:
  chk_ds();
  led_buf = 0x02;
  checkbox2.setSelected(true);
  byte_out(0xff-led_buf);
} //_CODE_:option2:515827:

public void option3_clicked1(GOption source, GEvent event) { //_CODE_:option3:987687:
   chk_ds(); 
  led_buf = 0x04;
  checkbox3.setSelected(true);
  byte_out(0xff-led_buf);
} //_CODE_:option3:987687:

public void option4_clicked1(GOption source, GEvent event) { //_CODE_:option4:943012:
   chk_ds(); 
   led_buf = 0x08;
   checkbox4.setSelected(true);
   byte_out(0xff-led_buf);
} //_CODE_:option4:943012:

public void option5_clicked1(GOption source, GEvent event) { //_CODE_:option5:521106:
  //println("option5 - GOption >> GEvent." + event + " @ " + millis());
   chk_ds(); 
  led_buf = 0x10;
  checkbox5.setSelected(true);
  byte_out(0xff-led_buf);
} //_CODE_:option5:521106:

public void option6_clicked1(GOption source, GEvent event) { //_CODE_:option6:212433:
   chk_ds(); 
  led_buf = 0x20;
  checkbox6.setSelected(true);
  byte_out(0xff-led_buf);
} //_CODE_:option6:212433:

public void option7_clicked1(GOption source, GEvent event) { //_CODE_:option7:848707:
  chk_ds(); 
  led_buf = 0x40;
  checkbox7.setSelected(true);
  byte_out(0xff-led_buf);
} //_CODE_:option7:848707:

public void option8_clicked1(GOption source, GEvent event) { //_CODE_:option8:519086:
  chk_ds(); 
  led_buf = 0x80;
  checkbox8.setSelected(true);
  byte_out(0xff-led_buf);
} //_CODE_:option8:519086:

public void imgTogButton1_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
  option_ds();
 if((led_buf & 0x01) != 0x01) led_buf |= 0x01;
 else led_buf &= 0xfe; 
 byte_out(0xff-led_buf);
}

public void imgTogButton2_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
 option_ds();
  if((led_buf & 0x02) != 0x02) led_buf |= 0x02; 
  else led_buf &= 0xfd;
  byte_out(0xff-led_buf);
}

public void imgTogButton3_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
 option_ds();
  if((led_buf & 0x04) != 0x04) led_buf |= 0x04; 
  else led_buf &= 0xfb;
  byte_out(0xff-led_buf);
}

public void imgTogButton4_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
option_ds();
  if((led_buf & 0x08) != 0x08) led_buf |= 0x08;
  else led_buf &= 0xf7;
  byte_out(0xff-led_buf);
}

public void imgTogButton5_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
 option_ds();
  if((led_buf & 0x10) != 0x10) led_buf |= 0x10; 
  else led_buf &= 0xef;
  byte_out(0xff-led_buf);
}

public void imgTogButton6_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
 option_ds();
  if((led_buf & 0x20) != 0x20) led_buf |= 0x20; 
  else led_buf &= 0xdf;
  byte_out(0xff-led_buf);
}

public void imgTogButton7_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
 option_ds();
  if((led_buf & 0x40) != 0x40) led_buf |= 0x40;
  else led_buf &= 0xbf;
  byte_out(0xff-led_buf); 
}

public void imgTogButton8_click1(GImageToggleButton source, GEvent event) { //_CODE_:imgTogButton1:786408:
  option_ds();
  if((led_buf & 0x80) != 0x80) led_buf |= 0x80; 
  else led_buf &= 0x7f;
  byte_out(0xff-led_buf);
}










// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  
  checkbox1 = new GCheckbox(this, 33, 390, 54, 20);
  checkbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox1.setText("LED1");
  checkbox1.setOpaque(false);
  checkbox1.addEventHandler(this, "checkbox1_clicked1");
  
  checkbox2 = new GCheckbox(this, 114, 390, 54, 20);
  checkbox2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox2.setText("LED2");
  checkbox2.setOpaque(false);
  checkbox2.addEventHandler(this, "checkbox2_clicked1");
  
  checkbox3 = new GCheckbox(this, 194, 390, 54, 20);
  checkbox3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox3.setText("LED3");
  checkbox3.setOpaque(false);
  checkbox3.addEventHandler(this, "checkbox3_clicked1");
  
  checkbox4 = new GCheckbox(this, 274, 390, 54, 20);
  checkbox4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox4.setText("LED4");
  checkbox4.setOpaque(false);
  checkbox4.addEventHandler(this, "checkbox4_clicked1");
  
  checkbox5 = new GCheckbox(this, 354, 390, 54, 20);
  checkbox5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox5.setText("LED5");
  checkbox5.setOpaque(false);
  checkbox5.addEventHandler(this, "checkbox5_clicked1");
  
  checkbox6 = new GCheckbox(this, 434, 390, 54, 20);
  checkbox6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox6.setText("LED6");
  checkbox6.setOpaque(false);
  checkbox6.addEventHandler(this, "checkbox6_clicked1");
  
  checkbox7 = new GCheckbox(this, 514, 390, 54, 20);
  checkbox7.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox7.setText("LED7");
  checkbox7.setOpaque(false);
  checkbox7.addEventHandler(this, "checkbox7_clicked1");
  
  checkbox8 = new GCheckbox(this, 594, 390, 54, 20);
  checkbox8.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox8.setText("LED8");
  checkbox8.setOpaque(false);
  checkbox8.addEventHandler(this, "checkbox8_clicked1");
  
  togGroup1 = new GToggleGroup();
  option1 = new GOption(this, 33, 440, 54, 20);
  option1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option1.setText("LED1");
  option1.setOpaque(false);
  option1.addEventHandler(this, "option1_clicked1");
  
  option2 = new GOption(this, 114, 440, 54, 20);
  option2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option2.setText("LED2");
  option2.setOpaque(false);
  option2.addEventHandler(this, "option2_clicked1");
  
  option3 = new GOption(this, 194, 440, 54, 20);
  option3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option3.setText("LED3");
  option3.setOpaque(false);
  option3.addEventHandler(this, "option3_clicked1");
  
  option4 = new GOption(this, 274, 440, 54, 20);
  option4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option4.setText("LED4");
  option4.setOpaque(false);
  option4.addEventHandler(this, "option4_clicked1");
  
  option5 = new GOption(this, 354, 440, 54, 20);
  option5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option5.setText("LED5");
  option5.setOpaque(false);
  option5.addEventHandler(this, "option5_clicked1");
  
  option6 = new GOption(this, 434, 440, 54, 20);
  option6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option6.setText("LED6");
  option6.setOpaque(false);
  option6.addEventHandler(this, "option6_clicked1");
  
  option7 = new GOption(this, 514, 440, 54, 20);
  option7.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option7.setText("LED7");
  option7.setOpaque(false);
  option7.addEventHandler(this, "option7_clicked1");
  
  option8 = new GOption(this, 594, 440, 54, 20);
  option8.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option8.setText("LED8");
  option8.setOpaque(false);
  option8.addEventHandler(this, "option8_clicked1");
  
  imgTogButton1 = new GImageToggleButton(this, 40, 610);
  imgTogButton1.addEventHandler(this, "imgTogButton1_click1");
  
  imgTogButton2 = new GImageToggleButton(this, 120, 610);
  imgTogButton2.addEventHandler(this, "imgTogButton2_click1");
  
  imgTogButton3 = new GImageToggleButton(this, 200, 610);
  imgTogButton3.addEventHandler(this, "imgTogButton3_click1");
  
  imgTogButton4 = new GImageToggleButton(this, 280, 610);
  imgTogButton4.addEventHandler(this, "imgTogButton4_click1");
  
  imgTogButton5 = new GImageToggleButton(this, 360, 610);
  imgTogButton5.addEventHandler(this, "imgTogButton5_click1");
  
  imgTogButton6 = new GImageToggleButton(this, 440, 610);
  imgTogButton6.addEventHandler(this, "imgTogButton6_click1");
  
  imgTogButton7 = new GImageToggleButton(this, 520, 610);
  imgTogButton7.addEventHandler(this, "imgTogButton7_click1");
  
  imgTogButton8 = new GImageToggleButton(this, 600, 610);
  imgTogButton8.addEventHandler(this, "imgTogButton8_click1");

  
  togGroup1.addControl(option1);
  //option1.setSelected(true);
  togGroup1.addControl(option2);
  togGroup1.addControl(option3);
  togGroup1.addControl(option4);
  togGroup1.addControl(option5);
  togGroup1.addControl(option6);
  togGroup1.addControl(option7);
  togGroup1.addControl(option8);
}

// Variable declarations 
// autogenerated do not edit
GCheckbox checkbox1; 
GCheckbox checkbox2; 
GCheckbox checkbox3; 
GCheckbox checkbox4; 
GCheckbox checkbox5; 
GCheckbox checkbox6; 
GCheckbox checkbox7; 
GCheckbox checkbox8; 
GToggleGroup togGroup1; 
GOption option1; 
GOption option2; 
GOption option3; 
GOption option4; 
GOption option5; 
GOption option6; 
GOption option7; 
GOption option8;
GImageToggleButton imgTogButton1; 
GImageToggleButton imgTogButton2; 
GImageToggleButton imgTogButton3; 
GImageToggleButton imgTogButton4; 
GImageToggleButton imgTogButton5; 
GImageToggleButton imgTogButton6; 
GImageToggleButton imgTogButton7; 
GImageToggleButton imgTogButton8; 
