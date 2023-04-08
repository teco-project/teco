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

extension Ocr {
    /// MLIDCardOCR请求参数结构体
    public struct MLIDCardOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        public let imageBase64: String?

        /// 图片的 Url 地址。( 中国地区之外不支持这个字段 )
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 是否返回图片，默认false
        public let retImage: Bool?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, retImage: Bool? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.retImage = retImage
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case retImage = "RetImage"
        }
    }

    /// MLIDCardOCR返回参数结构体
    public struct MLIDCardOCRResponse: TCResponseModel {
        /// 身份证号
        public let id: String

        /// 姓名
        public let name: String

        /// 地址
        public let address: String

        /// 性别
        public let sex: String

        /// 告警码
        /// -9103	证照翻拍告警
        /// -9102	证照复印件告警
        /// -9106       证件遮挡告警
        /// -9107       模糊图片告警
        public let warn: [Int64]

        /// 证件图片
        public let image: String

        /// 此字段为扩展字段。
        /// 返回字段识别结果的置信度，格式如下
        /// {
        ///   字段名:{
        ///     Confidence:0.9999
        ///   }
        /// }
        public let advancedInfo: String

        /// 证件类型
        /// MyKad  身份证
        /// MyPR    永居证
        /// MyTentera   军官证
        /// MyKAS    临时身份证
        /// POLIS  警察证
        /// IKAD   劳工证
        /// MyKid 儿童卡
        public let type: String

        /// 出生日期（目前该字段仅支持IKAD劳工证、MyKad 身份证）
        public let birthday: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case name = "Name"
            case address = "Address"
            case sex = "Sex"
            case warn = "Warn"
            case image = "Image"
            case advancedInfo = "AdvancedInfo"
            case type = "Type"
            case birthday = "Birthday"
            case requestId = "RequestId"
        }
    }

    /// 马来西亚身份证识别
    ///
    /// 本接口支持马来西亚身份证识别，识别字段包括身份证号、姓名、性别、地址；具备身份证人像照片的裁剪功能和翻拍、复印件告警功能。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    @inlinable
    public func mlidCardOCR(_ input: MLIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MLIDCardOCRResponse> {
        self.client.execute(action: "MLIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 马来西亚身份证识别
    ///
    /// 本接口支持马来西亚身份证识别，识别字段包括身份证号、姓名、性别、地址；具备身份证人像照片的裁剪功能和翻拍、复印件告警功能。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    @inlinable
    public func mlidCardOCR(_ input: MLIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MLIDCardOCRResponse {
        try await self.client.execute(action: "MLIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 马来西亚身份证识别
    ///
    /// 本接口支持马来西亚身份证识别，识别字段包括身份证号、姓名、性别、地址；具备身份证人像照片的裁剪功能和翻拍、复印件告警功能。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    @inlinable
    public func mlidCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, retImage: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MLIDCardOCRResponse> {
        self.mlidCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, retImage: retImage), region: region, logger: logger, on: eventLoop)
    }

    /// 马来西亚身份证识别
    ///
    /// 本接口支持马来西亚身份证识别，识别字段包括身份证号、姓名、性别、地址；具备身份证人像照片的裁剪功能和翻拍、复印件告警功能。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    @inlinable
    public func mlidCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, retImage: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MLIDCardOCRResponse {
        try await self.mlidCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, retImage: retImage), region: region, logger: logger, on: eventLoop)
    }
}
