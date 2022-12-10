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
    /// 增加人脸
    ///
    /// 将一组人脸图片添加到一个人员中。一个人员最多允许包含 5 张图片。若该人员存在多个人员库中，所有人员库中该人员图片均会增加。
    /// >     
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func createFace(_ input: CreateFaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFaceResponse > {
        self.client.execute(action: "CreateFace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 增加人脸
    ///
    /// 将一组人脸图片添加到一个人员中。一个人员最多允许包含 5 张图片。若该人员存在多个人员库中，所有人员库中该人员图片均会增加。
    /// >     
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func createFace(_ input: CreateFaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFaceResponse {
        try await self.client.execute(action: "CreateFace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateFace请求参数结构体
    public struct CreateFaceRequest: TCRequestModel {
        /// 人员ID。
        public let personId: String
        
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// 人员人脸总数量不可超过5张。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let images: [String]?
        
        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。  
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。 
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        /// 人员人脸总数量不可超过5张。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        public let urls: [String]?
        
        /// 只有和该人员已有的人脸相似度超过FaceMatchThreshold值的人脸，才能增加人脸成功。 
        /// 默认值60分。取值范围[0,100] 。
        public let faceMatchThreshold: Float?
        
        /// 图片质量控制。 
        /// 0: 不进行控制； 
        /// 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况； 
        /// 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况； 
        /// 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况； 
        /// 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题； 
        /// 默认 0。 
        /// 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        public let qualityControl: UInt64?
        
        /// 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        public let needRotateDetection: UInt64?
        
        public init (personId: String, images: [String]?, urls: [String]?, faceMatchThreshold: Float?, qualityControl: UInt64?, needRotateDetection: UInt64?) {
            self.personId = personId
            self.images = images
            self.urls = urls
            self.faceMatchThreshold = faceMatchThreshold
            self.qualityControl = qualityControl
            self.needRotateDetection = needRotateDetection
        }
        
        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case images = "Images"
            case urls = "Urls"
            case faceMatchThreshold = "FaceMatchThreshold"
            case qualityControl = "QualityControl"
            case needRotateDetection = "NeedRotateDetection"
        }
    }
    
    /// CreateFace返回参数结构体
    public struct CreateFaceResponse: TCResponseModel {
        /// 加入成功的人脸数量
        public let sucFaceNum: UInt64
        
        /// 加入成功的人脸ID列表
        public let sucFaceIds: [String]
        
        /// 每张人脸图片添加结果，-1101 代表未检测到人脸，-1102 代表图片解码失败， 
        /// -1601代表不符合图片质量控制要求, -1604 代表人脸相似度没有超过FaceMatchThreshold。 
        /// 其他非 0 值代表算法服务异常。 
        /// RetCode的顺序和入参中 Images 或 Urls 的顺序一致。
        public let retCode: [Int64]
        
        /// 加入成功的人脸索引。索引顺序和入参中 Images 或 Urls 的顺序一致。 
        /// 例， Urls 中 有 3 个 url，第二个 url 失败，则 SucIndexes 值为 [0,2] 。
        public let sucIndexes: [UInt64]
        
        /// 加入成功的人脸框位置。顺序和入参中 Images 或 Urls 的顺序一致。
        public let sucFaceRects: [FaceRect]
        
        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sucFaceNum = "SucFaceNum"
            case sucFaceIds = "SucFaceIds"
            case retCode = "RetCode"
            case sucIndexes = "SucIndexes"
            case sucFaceRects = "SucFaceRects"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }
}