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
    /// 人员验证
    ///
    /// 给定一张人脸图片和一个 PersonId，判断图片中的人和 PersonId 对应的人是否为同一人。PersonId 请参考[人员库管理相关接口](https://cloud.tencent.com/document/product/867/32794)。
    /// 本接口会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使人员验证（确定待识别的人脸图片是某人员）更加准确。
    ///  和人脸比对相关接口不同的是，人脸验证相关接口用于判断 “此人是否是此人”，“此人”的信息已存于人员库中，“此人”可能存在多张人脸图片；而人脸比对相关接口用于判断两张人脸的相似度。
    /// >     
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    /// - 仅支持算法模型版本（FaceModelVersion）为3.0的人员库。
    @inlinable
    public func verifyPerson(_ input: VerifyPersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < VerifyPersonResponse > {
        self.client.execute(action: "VerifyPerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 人员验证
    ///
    /// 给定一张人脸图片和一个 PersonId，判断图片中的人和 PersonId 对应的人是否为同一人。PersonId 请参考[人员库管理相关接口](https://cloud.tencent.com/document/product/867/32794)。
    /// 本接口会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使人员验证（确定待识别的人脸图片是某人员）更加准确。
    ///  和人脸比对相关接口不同的是，人脸验证相关接口用于判断 “此人是否是此人”，“此人”的信息已存于人员库中，“此人”可能存在多张人脸图片；而人脸比对相关接口用于判断两张人脸的相似度。
    /// >     
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    /// - 仅支持算法模型版本（FaceModelVersion）为3.0的人员库。
    @inlinable
    public func verifyPerson(_ input: VerifyPersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyPersonResponse {
        try await self.client.execute(action: "VerifyPerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// VerifyPerson请求参数结构体
    public struct VerifyPersonRequest: TCRequestModel {
        /// 待验证的人员ID。人员ID具体信息请参考人员库管理相关接口。
        public let personId: String
        
        /// 图片 base64 数据。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?
        
        /// 图片的 Url 。 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。 
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。 
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?
        
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
        
        public init (personId: String, image: String?, url: String?, qualityControl: UInt64?, needRotateDetection: UInt64?) {
            self.personId = personId
            self.image = image
            self.url = url
            self.qualityControl = qualityControl
            self.needRotateDetection = needRotateDetection
        }
        
        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case image = "Image"
            case url = "Url"
            case qualityControl = "QualityControl"
            case needRotateDetection = "NeedRotateDetection"
        }
    }
    
    /// VerifyPerson返回参数结构体
    public struct VerifyPersonResponse: TCResponseModel {
        /// 给定的人脸照片与 PersonId 对应的相似度。若 PersonId 下有多张人脸（Face），会融合多张人脸信息进行验证。
        public let score: Float
        
        /// 是否为同一人的判断。
        public let isMatch: Bool
        
        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case isMatch = "IsMatch"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }
}