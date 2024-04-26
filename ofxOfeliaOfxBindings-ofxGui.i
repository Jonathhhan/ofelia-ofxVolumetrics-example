// SWIG (http://www.swig.org) interface wrapper for the openFrameworks core API
// 2014-17 Dan Wilcox <danomatika@gmail.com>

// addon MODULE
%module ofx

%import "../../ofxLua/swig/openFrameworks.i"

%{
	#include "../../ofxGui/src/ofxGui.h"
	#include "../../ofxGui/src/ofxGuiUtils.h"
	#include "../../ofxGui/src/ofxBaseGui.h"
	#include "../../ofxGui/src/ofxToggle.h"
	#include "../../ofxGui/src/ofxButton.h"
	#include "../../ofxGui/src/ofxColorPicker.h"
	#include "../../ofxGui/src/ofxGuiGroup.h"
	#include "../../ofxGui/src/ofxInputField.h"
	#include "../../ofxGui/src/ofxLabel.h"
	#include "../../ofxGui/src/ofxPanel.h"
	#include "../../ofxGui/src/ofxSlider.h"
	#include "../../ofxGui/src/ofxSliderGroup.h"
	#include "../../ofxVolumetrics/src/ofxVolumetrics.h"
	#include "../../ofxStableDiffusion/src/ofxStableDiffusion.h"
	#include "../../ofxImGui/src/Gui.h"
	using namespace ofxImGui;
	
%}

%valuewrapper stableDiffusionThread;
%include <swigmove.i>
%apply SWIGTYPE MOVE { stableDiffusionThread }

%include <operator_overload.i>
%include <carrays.i>
%include <argcargv.i>
%include <exception.i>
%include <typemaps.i>
%include <std_deque.i>
%include <std_auto_ptr.i>
%include <std_deque.i>
%include <swigmove.i>
%include <std_map.i>
%include <std_unique_ptr.i>
//%template(imageArray) sd_image_t; 
%rename(c_end) end;

//%naturalvar;

%ignore operator const ofRectangle&;
%ignore operator const std::string&;

%ignore setPosition;
%ignore setSize;
%ignore getPosition;
%ignore getWidth;
%ignore getHeight;
%ignore savePressedE;
%ignore loadPressedE;








//%template (ofxIntSlider) ofxSlider<int>;
// ----- Renaming -----

// strip "ofx" prefix from classes
%rename("%(strip:[ofx])s", %$isclass) "";

// strip "ofx" prefix from global functions & make first char lowercase
%rename("%(regex:/ofx(.*)/\\l\\1/)s", %$isfunction) "";

// strip "OFX_" from constants & enums
%rename("%(strip:[OFX_])s", %$isconstant) "";
%rename("%(strip:[OFX_])s", %$isenumitem) "";

// ----- Bindings------
%rename("opConstBoolRef") "operator const bool&";
%rename("opBool") "operator bool";
%include "../../ofxGui/src/ofxGui.h"
%include "../../ofxGui/src/ofxGuiUtils.h"
%include "../../ofxGui/src/ofxBaseGui.h"
%include "../../ofxGui/src/ofxToggle.h"
%include "../../ofxGui/src/ofxButton.h"
%include "../../ofxGui/src/ofxColorPicker.h"
%include "../../ofxGui/src/ofxGuiGroup.h"
%include "../../ofxGui/src/ofxInputField.h"
%include "../../ofxGui/src/ofxLabel.h"
%include "../../ofxGui/src/ofxPanel.h"
%include "../../ofxGui/src/ofxSlider.h"
%include "../../ofxGui/src/ofxSliderGroup.h"
%include "../../ofxVolumetrics/src/ofxVolumetrics.h"
%include "../../ofxVolumetrics/src/ofxImageSequencePlayer.h"
%include "../../ofxStableDiffusion/src/ofxStableDiffusion.h"
%include "../../ofxImGui/src/Gui.h"

//%rename("int") "operatorconstint&";


%rename("opConstFloatRef") "operator const float&";
%rename("opConstIntRef") "operator const int&";
//%rename(IndexInto) operator[](unsigned idx);
//%rename(IndexIntoConst) operator[](unsigned idx) const;
%template(ofxIntSlider) ofxSlider<int>;
%template(ofxFloatSlider) ofxSlider<float>;
//%template(ofxIntSlider) ofxSlider<int>;
//%template(ofxFloatSlider) ofxSlider<float&>;