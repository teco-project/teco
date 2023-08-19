//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Facefusion {
    /// FuseFace请求参数结构体
    public struct FuseFaceRequest: TCRequest {
        /// 活动 ID，请在[人脸融合控制台](https://console.cloud.tencent.com/facefusion)查看。
        public let projectId: String

        /// 素材 ID，请在[人脸融合控制台](https://console.cloud.tencent.com/facefusion)查看。
        public let modelId: String

        /// 返回图像方式（url 或 base64) ，二选一。url有效期为7天。
        public let rspImgType: String

        /// 用户人脸图片、素材模板图的人脸位置信息。
        public let mergeInfos: [MergeInfo]

        /// 脸型融合比例，数值越高，融合后的脸型越像素材人物。取值范围[0,100]
        /// 若此参数不填写，则使用人脸融合控制台中脸型参数数值。（换脸版算法暂不支持此参数调整）
        public let fuseProfileDegree: Int64?

        /// 五官融合比例，数值越高，融合后的五官越像素材人物。取值范围[0,100]
        /// 若此参数不填写，则使用人脸融合控制台中五官参数数值。（换脸版算法暂不支持此参数调整）
        public let fuseFaceDegree: Int64?

        /// 为融合结果图添加合成标识的开关，默认为1。
        /// 1：添加标识。
        /// 0：不添加标识。
        /// 其他数值：默认按1处理。
        /// 建议您使用显著标识来提示结果图使用了人脸融合技术，是AI合成的图片。
        public let logoAdd: Int64?

        /// 标识内容设置。
        /// 默认在融合结果图右下角添加“本图片为AI合成图片”字样，您可根据自身需要替换为其他的Logo图片。
        public let logoParam: LogoParam?

        /// 融合参数。
        public let fuseParam: FuseParam?

        public init(projectId: String, modelId: String, rspImgType: String, mergeInfos: [MergeInfo], fuseProfileDegree: Int64? = nil, fuseFaceDegree: Int64? = nil, logoAdd: Int64? = nil, logoParam: LogoParam? = nil, fuseParam: FuseParam? = nil) {
            self.projectId = projectId
            self.modelId = modelId
            self.rspImgType = rspImgType
            self.mergeInfos = mergeInfos
            self.fuseProfileDegree = fuseProfileDegree
            self.fuseFaceDegree = fuseFaceDegree
            self.logoAdd = logoAdd
            self.logoParam = logoParam
            self.fuseParam = fuseParam
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case modelId = "ModelId"
            case rspImgType = "RspImgType"
            case mergeInfos = "MergeInfos"
            case fuseProfileDegree = "FuseProfileDegree"
            case fuseFaceDegree = "FuseFaceDegree"
            case logoAdd = "LogoAdd"
            case logoParam = "LogoParam"
            case fuseParam = "FuseParam"
        }
    }

    /// FuseFace返回参数结构体
    public struct FuseFaceResponse: TCResponse {
        /// RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。
        public let fusedImage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fusedImage = "FusedImage"
            case requestId = "RequestId"
        }
    }

    /// 图片人脸融合
    ///
    /// 本接口用于单脸、多脸、选脸融合，上传人脸图片，得到与素材模板融合后的人脸图片。支持为融合结果图添加标识。查看 [融合接入指引](https://cloud.tencent.com/document/product/670/38247)。
    ///
    /// 请求频率限制为20次/秒。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func fuseFace(_ input: FuseFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FuseFaceResponse> {
        self.client.execute(action: "FuseFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片人脸融合
    ///
    /// 本接口用于单脸、多脸、选脸融合，上传人脸图片，得到与素材模板融合后的人脸图片。支持为融合结果图添加标识。查看 [融合接入指引](https://cloud.tencent.com/document/product/670/38247)。
    ///
    /// 请求频率限制为20次/秒。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func fuseFace(_ input: FuseFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FuseFaceResponse {
        try await self.client.execute(action: "FuseFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片人脸融合
    ///
    /// 本接口用于单脸、多脸、选脸融合，上传人脸图片，得到与素材模板融合后的人脸图片。支持为融合结果图添加标识。查看 [融合接入指引](https://cloud.tencent.com/document/product/670/38247)。
    ///
    /// 请求频率限制为20次/秒。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func fuseFace(projectId: String, modelId: String, rspImgType: String, mergeInfos: [MergeInfo], fuseProfileDegree: Int64? = nil, fuseFaceDegree: Int64? = nil, logoAdd: Int64? = nil, logoParam: LogoParam? = nil, fuseParam: FuseParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FuseFaceResponse> {
        self.fuseFace(.init(projectId: projectId, modelId: modelId, rspImgType: rspImgType, mergeInfos: mergeInfos, fuseProfileDegree: fuseProfileDegree, fuseFaceDegree: fuseFaceDegree, logoAdd: logoAdd, logoParam: logoParam, fuseParam: fuseParam), region: region, logger: logger, on: eventLoop)
    }

    /// 图片人脸融合
    ///
    /// 本接口用于单脸、多脸、选脸融合，上传人脸图片，得到与素材模板融合后的人脸图片。支持为融合结果图添加标识。查看 [融合接入指引](https://cloud.tencent.com/document/product/670/38247)。
    ///
    /// 请求频率限制为20次/秒。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func fuseFace(projectId: String, modelId: String, rspImgType: String, mergeInfos: [MergeInfo], fuseProfileDegree: Int64? = nil, fuseFaceDegree: Int64? = nil, logoAdd: Int64? = nil, logoParam: LogoParam? = nil, fuseParam: FuseParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FuseFaceResponse {
        try await self.fuseFace(.init(projectId: projectId, modelId: modelId, rspImgType: rspImgType, mergeInfos: mergeInfos, fuseProfileDegree: fuseProfileDegree, fuseFaceDegree: fuseFaceDegree, logoAdd: logoAdd, logoParam: logoParam, fuseParam: fuseParam), region: region, logger: logger, on: eventLoop)
    }
}
