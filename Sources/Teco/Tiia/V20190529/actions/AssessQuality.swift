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

import TecoCore

extension Tiia {
    /// AssessQuality请求参数结构体
    public struct AssessQualityRequest: TCRequestModel {
        /// 图片URL地址。
        /// 图片限制：
        /// • 图片格式：PNG、JPG、JPEG。
        /// • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        /// 建议：
        /// • 图片像素：大于50*50像素，否则影响识别效果。
        /// • 长宽比：长边：短边<5。
        /// 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        public let imageUrl: String?

        /// 图片经过Base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        /// **注意：图片需要Base64编码，并且要去掉编码头部。**
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

    /// AssessQuality返回参数结构体
    public struct AssessQualityResponse: TCResponseModel {
        /// 取值为TRUE或FALSE，TRUE为长图，FALSE为正常图，长图定义为长宽比大于等于3或小于等于1/3的图片。
        public let longImage: Bool

        /// 取值为TRUE或FALSE，TRUE为黑白图，FALSE为否。黑白图即灰度图，指红绿蓝三个通道都是以灰度色阶显示的图片，并非视觉上的“黑白图片”。
        public let blackAndWhite: Bool

        /// 取值为TRUE或FALSE，TRUE为小图，FALSE为否, 小图定义为最长边小于179像素的图片。当一张图片被判断为小图时，不建议做推荐和展示，其他字段统一输出为0或FALSE。
        public let smallImage: Bool

        /// 取值为TRUE或FALSE，TRUE为大图，FALSE为否，定义为最短边大于1000像素的图片
        public let bigImage: Bool

        /// 取值为TRUE或FALSE，TRUE为纯色图或纯文字图，即没有内容或只有简单内容的图片，FALSE为正常图片。
        public let pureImage: Bool

        /// 综合评分。图像清晰度的得分，对图片的噪声、曝光、模糊、压缩等因素进行综合评估，取值为[0, 100]，值越大，越清晰。一般大于50为较清晰图片，标准可以自行把握。
        public let clarityScore: Int64

        /// 综合评分。图像美观度得分， 从构图、色彩等多个艺术性维度评价图片，取值为[0, 100]，值越大，越美观。一般大于50为较美观图片，标准可以自行把握。
        public let aestheticScore: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case longImage = "LongImage"
            case blackAndWhite = "BlackAndWhite"
            case smallImage = "SmallImage"
            case bigImage = "BigImage"
            case pureImage = "PureImage"
            case clarityScore = "ClarityScore"
            case aestheticScore = "AestheticScore"
            case requestId = "RequestId"
        }
    }

    /// 图像质量评估
    ///
    /// 评估输入图片在视觉上的质量，从多个方面评估，并同时给出综合的、客观的清晰度评分，和主观的美观度评分。
    ///
    /// >
    /// - 可前往 [图像处理](https://cloud.tencent.com/document/product/1590) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func assessQuality(_ input: AssessQualityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssessQualityResponse> {
        self.client.execute(action: "AssessQuality", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图像质量评估
    ///
    /// 评估输入图片在视觉上的质量，从多个方面评估，并同时给出综合的、客观的清晰度评分，和主观的美观度评分。
    ///
    /// >
    /// - 可前往 [图像处理](https://cloud.tencent.com/document/product/1590) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func assessQuality(_ input: AssessQualityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssessQualityResponse {
        try await self.client.execute(action: "AssessQuality", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图像质量评估
    ///
    /// 评估输入图片在视觉上的质量，从多个方面评估，并同时给出综合的、客观的清晰度评分，和主观的美观度评分。
    ///
    /// >
    /// - 可前往 [图像处理](https://cloud.tencent.com/document/product/1590) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func assessQuality(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssessQualityResponse> {
        self.assessQuality(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }

    /// 图像质量评估
    ///
    /// 评估输入图片在视觉上的质量，从多个方面评估，并同时给出综合的、客观的清晰度评分，和主观的美观度评分。
    ///
    /// >
    /// - 可前往 [图像处理](https://cloud.tencent.com/document/product/1590) 产品文档中查看更多产品信息。
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func assessQuality(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssessQualityResponse {
        try await self.assessQuality(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }
}
