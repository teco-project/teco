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

extension Iir {
    /// RecognizeProduct请求参数结构体
    public struct RecognizeProductRequest: TCRequestModel {
        /// 图片限制：内测版仅支持jpg、jpeg，图片大小不超过1M，分辨率在25万到100万之间。 
        /// 建议先对图片进行压缩，以便提升处理速度。
        public let imageUrl: String?
        
        /// 图片经过base64编码的内容。最大不超过1M，分辨率在25万到100万之间。 
        /// 与ImageUrl同时存在时优先使用ImageUrl字段。
        /// **注意：图片需要base64编码，并且要去掉编码头部。**
        public let imageBase64: String?
        
        public init (imageUrl: String? = nil, imageBase64: String? = nil) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
        }
        
        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
        }
    }
    
    /// RecognizeProduct返回参数结构体
    public struct RecognizeProductResponse: TCResponseModel {
        /// 检测到的图片中的商品位置和品类预测。 
        /// 当图片中存在多个商品时，输出多组坐标，按照__显著性__排序（综合考虑面积、是否在中心、检测算法置信度）。 
        /// 最多可以输出__3组__检测结果。
        public let regionDetected: [RegionDetected]
        
        /// 图像识别出的商品的详细信息。 
        /// 当图像中检测到多个物品时，会对显著性最高的进行识别。
        public let productInfo: ProductInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case regionDetected = "RegionDetected"
            case productInfo = "ProductInfo"
            case requestId = "RequestId"
        }
    }
    
    /// 商品识别
    ///
    /// 商品识别，使用微信扫一扫识物同款技术，基于人工智能技术、海量训练图片、亿级商品库，可以实现全覆盖、细粒度、高准确率的商品识别和商品推荐功能。 本服务可以识别出图片中的主体位置、主体商品类型，覆盖亿级SKU，输出具体商品的价格、型号等详细信息。 客户无需自建商品库，即可快速实现商品识别、拍照搜商品等功能。
    /// 目前“商品识别”为公测服务，需要申请、开通后方可使用。请在[服务开通申请表](https://cloud.tencent.com/apply/p/y1q2mnf0vdl) 中填写详细信息和需求，如果通过审核，我们将会在2个工作日内与您联系，并开通服务。 公测期间，本服务免费提供最高2QPS，收费模式和标准会在正式版上线前通过站内信、短信通知客户。如果需要提升并发，请与我们联系洽谈。
    /// 注意：本文档为公测版本，仅适用于功能体验和测试，正式业务接入请等待正式版。正式版的输入、输出可能会与公测版存在少量差异。
    @inlinable
    public func recognizeProduct(_ input: RecognizeProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RecognizeProductResponse > {
        self.client.execute(action: "RecognizeProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 商品识别
    ///
    /// 商品识别，使用微信扫一扫识物同款技术，基于人工智能技术、海量训练图片、亿级商品库，可以实现全覆盖、细粒度、高准确率的商品识别和商品推荐功能。 本服务可以识别出图片中的主体位置、主体商品类型，覆盖亿级SKU，输出具体商品的价格、型号等详细信息。 客户无需自建商品库，即可快速实现商品识别、拍照搜商品等功能。
    /// 目前“商品识别”为公测服务，需要申请、开通后方可使用。请在[服务开通申请表](https://cloud.tencent.com/apply/p/y1q2mnf0vdl) 中填写详细信息和需求，如果通过审核，我们将会在2个工作日内与您联系，并开通服务。 公测期间，本服务免费提供最高2QPS，收费模式和标准会在正式版上线前通过站内信、短信通知客户。如果需要提升并发，请与我们联系洽谈。
    /// 注意：本文档为公测版本，仅适用于功能体验和测试，正式业务接入请等待正式版。正式版的输入、输出可能会与公测版存在少量差异。
    @inlinable
    public func recognizeProduct(_ input: RecognizeProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeProductResponse {
        try await self.client.execute(action: "RecognizeProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
