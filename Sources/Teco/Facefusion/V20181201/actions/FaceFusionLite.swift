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

extension Facefusion {
    /// 人脸融合活动专用版
    ///
    /// 人脸融合活动专用版，不推荐使用。人脸融合接口建议使用[人脸融合](https://cloud.tencent.com/document/product/670/31061)或[选脸融合](https://cloud.tencent.com/document/product/670/37736)接口
    @inlinable
    public func faceFusionLite(_ input: FaceFusionLiteRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < FaceFusionLiteResponse > {
        self.client.execute(action: "FaceFusionLite", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 人脸融合活动专用版
    ///
    /// 人脸融合活动专用版，不推荐使用。人脸融合接口建议使用[人脸融合](https://cloud.tencent.com/document/product/670/31061)或[选脸融合](https://cloud.tencent.com/document/product/670/37736)接口
    @inlinable
    public func faceFusionLite(_ input: FaceFusionLiteRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FaceFusionLiteResponse {
        try await self.client.execute(action: "FaceFusionLite", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// FaceFusionLite请求参数结构体
    public struct FaceFusionLiteRequest: TCRequestModel {
        /// 活动 ID，请在人脸融合控制台查看。
        public let projectId: String
        
        /// 素材 ID，请在人脸融合控制台查看。
        public let modelId: String
        
        /// 用户人脸图片、素材模板图的人脸位置信息。
        public let mergeInfos: [MergeInfo]
        
        /// 返回图像方式（url 或 base64) ，二选一。默认url, url有效期为30天。
        public let rspImgType: String?
        
        /// 请注意，鉴政服务开启后，您需要根据返回结果自行判断是否调整您的业务逻辑。例如提示您的用户图片非法，请更换图片。
        public let celebrityIdentify: Int64?
        
        /// 算法引擎参数:  1）选脸版 - youturecreat; 2）优享版 - youtu1vN； 3）畅享版 - ptu； 4）随机 - ALL;  默认为活动选择的算法
        public let engine: String?
        
        public init (projectId: String, modelId: String, mergeInfos: [MergeInfo], rspImgType: String?, celebrityIdentify: Int64?, engine: String?) {
            self.projectId = projectId
            self.modelId = modelId
            self.mergeInfos = mergeInfos
            self.rspImgType = rspImgType
            self.celebrityIdentify = celebrityIdentify
            self.engine = engine
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case modelId = "ModelId"
            case mergeInfos = "MergeInfos"
            case rspImgType = "RspImgType"
            case celebrityIdentify = "CelebrityIdentify"
            case engine = "Engine"
        }
    }
    
    /// FaceFusionLite返回参数结构体
    public struct FaceFusionLiteResponse: TCResponseModel {
        /// RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。
        public let image: String
        
        /// 鉴政结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reviewResultSet: [FuseFaceReviewResult]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case reviewResultSet = "ReviewResultSet"
            case requestId = "RequestId"
        }
    }
}
