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

extension Ocr {
    /// BusinessCardOCR请求参数结构体
    public struct BusinessCardOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 可选字段，根据需要选择是否请求对应字段。
        /// 目前支持的字段为：
        /// RetImageType-“PROPROCESS” 图像预处理，string 类型。
        /// 图像预处理功能为，检测图片倾斜的角度，将原本倾斜的图片围绕中心点转正，最终输出一张正的名片抠图。
        ///
        /// SDK 设置方式参考：
        /// Config = Json.stringify({"RetImageType":"PROPROCESS"})
        /// API 3.0 Explorer 设置方式参考：
        /// Config = {"RetImageType":"PROPROCESS"}
        public let config: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, config: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.config = config
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case config = "Config"
        }
    }

    /// BusinessCardOCR返回参数结构体
    public struct BusinessCardOCRResponse: TCResponseModel {
        /// 名片识别结果，具体内容请点击左侧链接。
        public let businessCardInfos: [BusinessCardInfo]

        /// 返回图像预处理后的图片，图像预处理未开启时返回内容为空。
        public let retImageBase64: String

        /// 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看<a href="https://cloud.tencent.com/document/product/866/45139">如何纠正倾斜文本</a>
        public let angle: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case businessCardInfos = "BusinessCardInfos"
            case retImageBase64 = "RetImageBase64"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }

    /// 名片识别
    ///
    /// 本接口支持名片各字段的自动定位与识别，包含姓名、电话、手机号、邮箱、公司、部门、职位、网址、地址、QQ、微信、MSN等。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func businessCardOCR(_ input: BusinessCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BusinessCardOCRResponse> {
        self.client.execute(action: "BusinessCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 名片识别
    ///
    /// 本接口支持名片各字段的自动定位与识别，包含姓名、电话、手机号、邮箱、公司、部门、职位、网址、地址、QQ、微信、MSN等。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func businessCardOCR(_ input: BusinessCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BusinessCardOCRResponse {
        try await self.client.execute(action: "BusinessCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 名片识别
    ///
    /// 本接口支持名片各字段的自动定位与识别，包含姓名、电话、手机号、邮箱、公司、部门、职位、网址、地址、QQ、微信、MSN等。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func businessCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BusinessCardOCRResponse> {
        self.businessCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, config: config), region: region, logger: logger, on: eventLoop)
    }

    /// 名片识别
    ///
    /// 本接口支持名片各字段的自动定位与识别，包含姓名、电话、手机号、邮箱、公司、部门、职位、网址、地址、QQ、微信、MSN等。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func businessCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BusinessCardOCRResponse {
        try await self.businessCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, config: config), region: region, logger: logger, on: eventLoop)
    }
}
