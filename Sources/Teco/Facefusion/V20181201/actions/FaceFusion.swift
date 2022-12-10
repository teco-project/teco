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

extension Facefusion {
    /// 人脸融合
    ///
    /// 本接口用于人脸融合，用户上传人脸图片，获取与模板融合后的人脸图片。未发布的活动请求频率限制为1次/秒，已发布的活动请求频率限制50次/秒。如有需要提高活动的请求频率限制，请在控制台中申请。
    /// >     
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func faceFusion(_ input: FaceFusionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < FaceFusionResponse > {
        self.client.execute(action: "FaceFusion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 人脸融合
    ///
    /// 本接口用于人脸融合，用户上传人脸图片，获取与模板融合后的人脸图片。未发布的活动请求频率限制为1次/秒，已发布的活动请求频率限制50次/秒。如有需要提高活动的请求频率限制，请在控制台中申请。
    /// >     
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func faceFusion(_ input: FaceFusionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FaceFusionResponse {
        try await self.client.execute(action: "FaceFusion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// FaceFusion请求参数结构体
    public struct FaceFusionRequest: TCRequestModel {
        /// 活动 ID，请在人脸融合控制台查看。
        public let projectId: String
        
        /// 素材 ID，请在人脸融合控制台查看。
        public let modelId: String
        
        /// 返回图像方式（url 或 base64) ，二选一。url有效期为7天。
        public let rspImgType: String
        
        /// 图片 base64 数据。请确保人脸为正脸，无旋转。若某些手机拍摄后人脸被旋转，请使用图片的 EXIF 信息对图片进行旋转处理；请勿在 base64 数据中包含头部，如“data:image/jpeg;base64,”。
        public let image: String?
        
        /// 历史遗留字段，无需填写。因为融合只需提取人脸特征，不需要鉴黄。
        public let pornDetect: Int64?
        
        /// 0表示不需要不适宜内容识别，1表示需要不适宜内容识别。默认值为0。
        /// 请注意，不适宜内容识别服务开启后，您需要根据返回结果自行判断是否调整您的业务逻辑。例如提示您的用户图片非法，请更换图片。
        public let celebrityIdentify: Int64?
        
        /// 图片Url地址
        public let url: String?
        
        public init (projectId: String, modelId: String, rspImgType: String, image: String?, pornDetect: Int64?, celebrityIdentify: Int64?, url: String?) {
            self.projectId = projectId
            self.modelId = modelId
            self.rspImgType = rspImgType
            self.image = image
            self.pornDetect = pornDetect
            self.celebrityIdentify = celebrityIdentify
            self.url = url
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case modelId = "ModelId"
            case rspImgType = "RspImgType"
            case image = "Image"
            case pornDetect = "PornDetect"
            case celebrityIdentify = "CelebrityIdentify"
            case url = "Url"
        }
    }
    
    /// FaceFusion返回参数结构体
    public struct FaceFusionResponse: TCResponseModel {
        /// RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。
        public let image: String
        
        /// 不适宜内容识别结果
        public let reviewResultSet: [FuseFaceReviewResult]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case reviewResultSet = "ReviewResultSet"
            case requestId = "RequestId"
        }
    }
}