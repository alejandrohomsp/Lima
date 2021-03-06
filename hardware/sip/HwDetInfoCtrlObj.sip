//###########################################################################
// This file is part of LImA, a Library for Image Acquisition
//
// Copyright (C) : 2009-2011
// European Synchrotron Radiation Facility
// BP 220, Grenoble 38043
// FRANCE
//
// This is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3 of the License, or
// (at your option) any later version.
//
// This software is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, see <http://www.gnu.org/licenses/>.
//###########################################################################
class HwDetInfoCtrlObj
{
%TypeHeaderCode
#include "HwDetInfoCtrlObj.h"
using namespace lima;
%End
 public:
	HwDetInfoCtrlObj();
	virtual ~HwDetInfoCtrlObj();

	virtual void getMaxImageSize(Size& size /Out/) = 0;
	virtual void getDetectorImageSize(Size& size /Out/) = 0;
	virtual void getDefImageType(ImageType& def_image_type /Out/) = 0;
	virtual void getCurrImageType(ImageType& curr_image_type /Out/) = 0;
	virtual void setCurrImageType(ImageType  curr_image_type) = 0;

	virtual void getPixelSize(double& x_size /Out/,double &y_size /Out/) = 0;
	virtual void getDetectorType(std::string& det_type /Out/) = 0;
	virtual void getDetectorModel(std::string& det_model /Out/) = 0;
	virtual void setUserDetectorName(const std::string &username);
	virtual void getUserDetectorName(std::string& username /Out/);
	virtual void setInstrumentName(const std::string &name);
	virtual void getInstrumentName(std::string& name /Out/);

	virtual void registerMaxImageSizeCallback(
					HwMaxImageSizeCallback& cb) = 0;
	virtual void unregisterMaxImageSizeCallback(
					HwMaxImageSizeCallback& cb) = 0;
};
