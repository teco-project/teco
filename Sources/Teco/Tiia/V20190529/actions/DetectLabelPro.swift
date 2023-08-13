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
    /// DetectLabelPro请求参数结构体
    public struct DetectLabelProRequest: TCRequestModel {
        /// 图片 URL 地址。
        /// 图片限制：
        /// • 图片格式：PNG、JPG、JPEG、BMP。
        /// • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        /// 建议：
        /// • 图片像素：大于50*50像素，否则影响识别效果；
        /// • 长宽比：长边:短边<5；
        /// • 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        public let imageUrl: String?

        /// 图片 Base64 编码数据。
        /// 与ImageUrl同时存在时优先使用ImageUrl字段。
        /// 图片限制：
        /// • 图片格式：PNG、JPG、JPEG、BMP。
        /// • 图片大小：经Base64编码后不超过4M。
        /// **_注意：图片需要Base64编码，并且要去掉编码头部。_**
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

    /// DetectLabelPro返回参数结构体
    public struct DetectLabelProResponse: TCResponseModel {
        /// 返回标签数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: [DetectLabelItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case labels = "Labels"
            case requestId = "RequestId"
        }
    }

    /// 通用图像标签
    ///
    /// 通用图像标签可识别数千种常见物体或场景，覆盖日常物品、场景、动物、植物、食物、饮品、交通工具等多个大类，返回主体的标签名称和所属细分类目等。
    /// - 可前往 [图像标签](https://cloud.tencent.com/document/product/1588) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelPro(_ input: DetectLabelProRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLabelProResponse> {
        self.client.execute(action: "DetectLabelPro", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通用图像标签
    ///
    /// 通用图像标签可识别数千种常见物体或场景，覆盖日常物品、场景、动物、植物、食物、饮品、交通工具等多个大类，返回主体的标签名称和所属细分类目等。
    /// - 可前往 [图像标签](https://cloud.tencent.com/document/product/1588) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelPro(_ input: DetectLabelProRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLabelProResponse {
        try await self.client.execute(action: "DetectLabelPro", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通用图像标签
    ///
    /// 通用图像标签可识别数千种常见物体或场景，覆盖日常物品、场景、动物、植物、食物、饮品、交通工具等多个大类，返回主体的标签名称和所属细分类目等。
    /// - 可前往 [图像标签](https://cloud.tencent.com/document/product/1588) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelPro(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLabelProResponse> {
        self.detectLabelPro(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }

    /// 通用图像标签
    ///
    /// 通用图像标签可识别数千种常见物体或场景，覆盖日常物品、场景、动物、植物、食物、饮品、交通工具等多个大类，返回主体的标签名称和所属细分类目等。
    /// - 可前往 [图像标签](https://cloud.tencent.com/document/product/1588) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelPro(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLabelProResponse {
        try await self.detectLabelPro(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }
}
