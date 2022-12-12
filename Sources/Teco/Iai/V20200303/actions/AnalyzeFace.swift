//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iai {
    /// AnalyzeFace请求参数结构体
    public struct AnalyzeFaceRequest: TCRequestModel {
        /// 检测模式。0 为检测所有出现的人脸， 1 为检测面积最大的人脸。默认为 0。最多返回 10 张人脸的五官定位（人脸关键点）具体信息。
        public let mode: UInt64?
        
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?
        
        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。  
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。 
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?
        
        /// 人脸识别服务所用的算法模型版本。
        /// 目前入参支持 “2.0”和“3.0“ 两个输入。
        /// 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。
        /// 2020年11月26日后开通服务的账号仅支持输入“3.0”。
        /// 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        public let faceModelVersion: String?
        
        /// 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        public let needRotateDetection: UInt64?
        
        public init (mode: UInt64? = nil, image: String? = nil, url: String? = nil, faceModelVersion: String? = nil, needRotateDetection: UInt64? = nil) {
            self.mode = mode
            self.image = image
            self.url = url
            self.faceModelVersion = faceModelVersion
            self.needRotateDetection = needRotateDetection
        }
        
        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case image = "Image"
            case url = "Url"
            case faceModelVersion = "FaceModelVersion"
            case needRotateDetection = "NeedRotateDetection"
        }
    }
    
    /// AnalyzeFace返回参数结构体
    public struct AnalyzeFaceResponse: TCResponseModel {
        /// 请求的图片宽度。
        public let imageWidth: UInt64
        
        /// 请求的图片高度。
        public let imageHeight: UInt64
        
        /// 五官定位（人脸关键点）具体信息。
        public let faceShapeSet: [FaceShape]
        
        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageWidth = "ImageWidth"
            case imageHeight = "ImageHeight"
            case faceShapeSet = "FaceShapeSet"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }
    
    /// 五官定位
    ///
    /// 对请求图片进行五官定位（也称人脸关键点定位），计算构成人脸轮廓的 90 个点，包括眉毛（左右各 8 点）、眼睛（左右各 8 点）、鼻子（13 点）、嘴巴（22 点）、脸型轮廓（21 点）、眼珠[或瞳孔]（2点）。
    /// >     
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func analyzeFace(_ input: AnalyzeFaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AnalyzeFaceResponse > {
        self.client.execute(action: "AnalyzeFace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 五官定位
    ///
    /// 对请求图片进行五官定位（也称人脸关键点定位），计算构成人脸轮廓的 90 个点，包括眉毛（左右各 8 点）、眼睛（左右各 8 点）、鼻子（13 点）、嘴巴（22 点）、脸型轮廓（21 点）、眼珠[或瞳孔]（2点）。
    /// >     
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func analyzeFace(_ input: AnalyzeFaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AnalyzeFaceResponse {
        try await self.client.execute(action: "AnalyzeFace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
