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
    /// DetectProductBeta请求参数结构体
    public struct DetectProductBetaRequest: TCRequest {
        /// 图片限制：内测版仅支持jpg、jpeg，图片大小不超过1M，分辨率在25万到100万之间。
        /// 建议先对图片进行压缩，以便提升处理速度。
        public let imageUrl: String?

        /// 图片经过base64编码的内容。最大不超过1M，分辨率在25万到100万之间。
        /// 与ImageUrl同时存在时优先使用ImageUrl字段。
        public let imageBase64: String?

        /// 是否需要百科信息 1：是，0: 否，默认是0
        public let needLemma: Int64?

        public init(imageUrl: String? = nil, imageBase64: String? = nil, needLemma: Int64? = nil) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
            self.needLemma = needLemma
        }

        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
            case needLemma = "NeedLemma"
        }
    }

    /// DetectProductBeta返回参数结构体
    public struct DetectProductBetaResponse: TCResponse {
        /// 检测到的图片中的商品位置和品类预测。
        /// 当图片中存在多个商品时，输出多组坐标，按照__显著性__排序（综合考虑面积、是否在中心、检测算法置信度）。
        /// 最多可以输出__3组__检测结果。
        public let regionDetected: [RegionDetected]

        /// 图像识别出的商品的详细信息。
        /// 当图像中检测到多个物品时，会对显著性最高的进行识别。
        public let productInfo: ProductInfo

        /// 相似商品信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productInfoList: [ProductInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionDetected = "RegionDetected"
            case productInfo = "ProductInfo"
            case productInfoList = "ProductInfoList"
            case requestId = "RequestId"
        }
    }

    /// 商品识别-微信识物版
    ///
    /// 商品识别-微信识物版，基于人工智能技术、海量训练图片、亿级商品库，可以实现全覆盖、细粒度、高准确率的商品识别和商品推荐功能。
    /// 本服务可以识别出图片中的主体位置、主体商品类型，覆盖亿级SKU，输出具体商品的价格、型号等详细信息。
    /// 客户无需自建商品库，即可快速实现商品识别、拍照搜商品等功能。
    /// #### Attention
    ///
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProductBeta(_ input: DetectProductBetaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectProductBetaResponse> {
        self.client.execute(action: "DetectProductBeta", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 商品识别-微信识物版
    ///
    /// 商品识别-微信识物版，基于人工智能技术、海量训练图片、亿级商品库，可以实现全覆盖、细粒度、高准确率的商品识别和商品推荐功能。
    /// 本服务可以识别出图片中的主体位置、主体商品类型，覆盖亿级SKU，输出具体商品的价格、型号等详细信息。
    /// 客户无需自建商品库，即可快速实现商品识别、拍照搜商品等功能。
    /// #### Attention
    ///
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProductBeta(_ input: DetectProductBetaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectProductBetaResponse {
        try await self.client.execute(action: "DetectProductBeta", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 商品识别-微信识物版
    ///
    /// 商品识别-微信识物版，基于人工智能技术、海量训练图片、亿级商品库，可以实现全覆盖、细粒度、高准确率的商品识别和商品推荐功能。
    /// 本服务可以识别出图片中的主体位置、主体商品类型，覆盖亿级SKU，输出具体商品的价格、型号等详细信息。
    /// 客户无需自建商品库，即可快速实现商品识别、拍照搜商品等功能。
    /// #### Attention
    ///
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProductBeta(imageUrl: String? = nil, imageBase64: String? = nil, needLemma: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectProductBetaResponse> {
        self.detectProductBeta(.init(imageUrl: imageUrl, imageBase64: imageBase64, needLemma: needLemma), region: region, logger: logger, on: eventLoop)
    }

    /// 商品识别-微信识物版
    ///
    /// 商品识别-微信识物版，基于人工智能技术、海量训练图片、亿级商品库，可以实现全覆盖、细粒度、高准确率的商品识别和商品推荐功能。
    /// 本服务可以识别出图片中的主体位置、主体商品类型，覆盖亿级SKU，输出具体商品的价格、型号等详细信息。
    /// 客户无需自建商品库，即可快速实现商品识别、拍照搜商品等功能。
    /// #### Attention
    ///
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProductBeta(imageUrl: String? = nil, imageBase64: String? = nil, needLemma: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectProductBetaResponse {
        try await self.detectProductBeta(.init(imageUrl: imageUrl, imageBase64: imageBase64, needLemma: needLemma), region: region, logger: logger, on: eventLoop)
    }
}
