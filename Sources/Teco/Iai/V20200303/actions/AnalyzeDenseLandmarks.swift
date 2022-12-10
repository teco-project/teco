//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iai {
    /// 稠密关键点
    ///
    /// 对请求图片进行五官定位（也称人脸关键点定位），获得人脸的精准信息，返回多达888点关键信息，对五官和脸部轮廓进行精确定位。
    @inlinable
    public func analyzeDenseLandmarks(_ input: AnalyzeDenseLandmarksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AnalyzeDenseLandmarksResponse > {
        self.client.execute(action: "AnalyzeDenseLandmarks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 稠密关键点
    ///
    /// 对请求图片进行五官定位（也称人脸关键点定位），获得人脸的精准信息，返回多达888点关键信息，对五官和脸部轮廓进行精确定位。
    @inlinable
    public func analyzeDenseLandmarks(_ input: AnalyzeDenseLandmarksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AnalyzeDenseLandmarksResponse {
        try await self.client.execute(action: "AnalyzeDenseLandmarks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AnalyzeDenseLandmarks请求参数结构体
    public struct AnalyzeDenseLandmarksRequest: TCRequestModel {
        /// 检测模式。0 为检测所有出现的人脸， 1 为检测面积最大的人脸。 
        /// 默认为 0。 
        /// 最多返回 5 张人脸的五官定位（人脸关键点）具体信息。
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
        
        /// 人脸识别服务所用的算法模型版本。本接口仅支持 “3.0“ 输入。
        public let faceModelVersion: String?
        
        /// 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        public let needRotateDetection: Int64?
        
        public init (mode: UInt64?, image: String?, url: String?, faceModelVersion: String?, needRotateDetection: Int64?) {
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
    
    /// AnalyzeDenseLandmarks返回参数结构体
    public struct AnalyzeDenseLandmarksResponse: TCResponseModel {
        /// 请求的图片宽度。
        public let imageWidth: Int64
        
        /// 请求的图片高度。
        public let imageHeight: Int64
        
        /// 稠密人脸关键点具体信息。
        public let denseFaceShapeSet: [DenseFaceShape]
        
        /// 人脸识别服务所用的算法模型版本。本接口仅支持 “3.0“ 输入。
        public let faceModelVersion: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageWidth = "ImageWidth"
            case imageHeight = "ImageHeight"
            case denseFaceShapeSet = "DenseFaceShapeSet"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }
}