//
//  APFPresentTask.h
//  APFaceDetectBiz
//
//  Created by 晗羽 on 8/26/16.
//  Copyright © 2016 Alipay. All rights reserved.
//

#import <APBToygerFacade/APBToygerBaseTask.h>
#import <ZolozSensorServices/CameraService.h>
#import <ZolozUIModule/ZolozFaceViewProtocol.h>
/**
 *  @author Skye Ying, 16-08-26 13:08:04
 *
 *  新建VC，启动整个view
 */
@interface APBToygerPresentTask : APBToygerBaseTask

@property(nonatomic, strong) id<ZolozFaceViewProtocol> faceView;

-(void) postCameraPresentwithCamera:(ZolozCameraService *) cameraService;

-(void) presentAnimated: (BOOL)flag completion:(void (^ __nullable)(void))completion;

@end
