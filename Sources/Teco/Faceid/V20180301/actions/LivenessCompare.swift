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

extension Faceid {
    /// 活体人脸比对
    ///
    /// 传入视频和照片，先判断视频中是否为真人，判断为真人后，再判断该视频中的人与上传照片是否属于同一个人。
    @inlinable
    public func livenessCompare(_ input: LivenessCompareRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < LivenessCompareResponse > {
        self.client.execute(action: "LivenessCompare", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 活体人脸比对
    ///
    /// 传入视频和照片，先判断视频中是否为真人，判断为真人后，再判断该视频中的人与上传照片是否属于同一个人。
    @inlinable
    public func livenessCompare(_ input: LivenessCompareRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LivenessCompareResponse {
        try await self.client.execute(action: "LivenessCompare", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// LivenessCompare请求参数结构体
    public struct LivenessCompareRequest: TCRequestModel {
        /// 活体检测类型，取值：LIP/ACTION/SILENT。
        /// LIP为数字模式，ACTION为动作模式，SILENT为静默模式，三种模式选择一种传入。
        public let livenessType: String
        
        /// 用于人脸比对的照片的Base64值；
        /// Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。
        /// 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageBase64。
        public let imageBase64: String?
        
        /// 用于人脸比对照片的URL地址；图片下载后经Base64编码后的数据大小不超过3M，仅支持jpg、png格式。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageBase64。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?
        
        /// 数字模式传参：传数字验证码，验证码需先调用<a href="https://cloud.tencent.com/document/product/1007/31821">获取数字验证码接口</a>得到；
        /// 动作模式传参：传动作顺序，动作顺序需先调用<a href="https://cloud.tencent.com/document/product/1007/31822">获取动作顺序接口</a>得到；
        /// 静默模式传参：空。
        public let validateData: String?
        
        /// 额外配置，传入JSON字符串。
        /// {
        /// "BestFrameNum": 2  //需要返回多张最佳截图，取值范围2-10
        /// }
        public let optional: String?
        
        /// 用于活体检测的视频，视频的Base64值；
        /// Base64编码后的大小不超过8M，支持mp4、avi、flv格式。
        /// 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        /// 视频的 VideoUrl、VideoBase64 必须提供一个，如果都提供，只使用 VideoBase64。
        public let videoBase64: String?
        
        /// 用于活体检测的视频Url 地址。视频下载后经Base64编码后不超过 8M，视频下载耗时不超过4S，支持mp4、avi、flv格式。
        /// 视频的 VideoUrl、VideoBase64 必须提供一个，如果都提供，只使用 VideoBase64。
        /// 建议视频存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议视频存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let videoUrl: String?
        
        public init (livenessType: String, imageBase64: String?, imageUrl: String?, validateData: String?, optional: String?, videoBase64: String?, videoUrl: String?) {
            self.livenessType = livenessType
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.validateData = validateData
            self.optional = optional
            self.videoBase64 = videoBase64
            self.videoUrl = videoUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case livenessType = "LivenessType"
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case validateData = "ValidateData"
            case optional = "Optional"
            case videoBase64 = "VideoBase64"
            case videoUrl = "VideoUrl"
        }
    }
    
    /// LivenessCompare返回参数结构体
    public struct LivenessCompareResponse: TCResponseModel {
        /// 验证通过后的视频最佳截图照片，照片为BASE64编码后的值，jpg格式。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrameBase64: String?
        
        /// 相似度，取值范围 [0.00, 100.00]。推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）。
        public let sim: Float
        
        /// 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        public let result: String
        
        /// 业务结果描述。
        public let description: String
        
        /// 最佳截图列表，仅在配置了返回多张最佳截图时返回。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrameList: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case bestFrameBase64 = "BestFrameBase64"
            case sim = "Sim"
            case result = "Result"
            case description = "Description"
            case bestFrameList = "BestFrameList"
            case requestId = "RequestId"
        }
    }
}
