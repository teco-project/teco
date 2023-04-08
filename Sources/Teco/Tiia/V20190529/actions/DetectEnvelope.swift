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

extension Tiia {
    /// DetectEnvelope请求参数结构体
    public struct DetectEnvelopeRequest: TCRequestModel {
        /// 图片的URL地址。图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 图片大小的限制为4M，图片像素的限制为4k。
        public let imageUrl: String?

        /// 图片经过base64编码的内容。与ImageUrl同时存在时优先使用ImageUrl字段。
        /// 图片大小的限制为4M，图片像素的限制为4k。
        /// **注意：图片需要base64编码，并且要去掉编码头部。
        public let imageBase64: String?

        public init(imageUrl: String? = nil, imageBase64: String? = nil) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
        }

        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
        }
    }

    /// DetectEnvelope返回参数结构体
    public struct DetectEnvelopeResponse: TCResponseModel {
        /// 一级标签结果数组。识别是否文件封。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstTags: [ImageTag]?

        /// 二级标签结果数组。识别文件封正反面。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secondTags: [ImageTag]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case firstTags = "FirstTags"
            case secondTags = "SecondTags"
            case requestId = "RequestId"
        }
    }

    /// 文件封识别
    ///
    /// 文件封识别可检测图片中是否包含符合文件封（即文件、单据、资料等的袋状包装）特征的物品，覆盖顺丰快递文件封、文件袋、档案袋等多种文件封类型，可应用于物流行业对文件快递的包装审核等场景。
    ///
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectEnvelope(_ input: DetectEnvelopeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectEnvelopeResponse> {
        self.client.execute(action: "DetectEnvelope", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文件封识别
    ///
    /// 文件封识别可检测图片中是否包含符合文件封（即文件、单据、资料等的袋状包装）特征的物品，覆盖顺丰快递文件封、文件袋、档案袋等多种文件封类型，可应用于物流行业对文件快递的包装审核等场景。
    ///
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectEnvelope(_ input: DetectEnvelopeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectEnvelopeResponse {
        try await self.client.execute(action: "DetectEnvelope", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文件封识别
    ///
    /// 文件封识别可检测图片中是否包含符合文件封（即文件、单据、资料等的袋状包装）特征的物品，覆盖顺丰快递文件封、文件袋、档案袋等多种文件封类型，可应用于物流行业对文件快递的包装审核等场景。
    ///
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectEnvelope(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectEnvelopeResponse> {
        self.detectEnvelope(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }

    /// 文件封识别
    ///
    /// 文件封识别可检测图片中是否包含符合文件封（即文件、单据、资料等的袋状包装）特征的物品，覆盖顺丰快递文件封、文件袋、档案袋等多种文件封类型，可应用于物流行业对文件快递的包装审核等场景。
    ///
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectEnvelope(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectEnvelopeResponse {
        try await self.detectEnvelope(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }
}
