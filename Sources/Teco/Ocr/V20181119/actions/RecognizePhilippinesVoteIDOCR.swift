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
    /// RecognizePhilippinesVoteIDOCR请求参数结构体
    public struct RecognizePhilippinesVoteIDOCRRequest: TCRequest {
        /// 是否返回人像照片。
        public let returnHeadImage: Bool

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

        public init(returnHeadImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil) {
            self.returnHeadImage = returnHeadImage
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
        }

        enum CodingKeys: String, CodingKey {
            case returnHeadImage = "ReturnHeadImage"
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
        }
    }

    /// RecognizePhilippinesVoteIDOCR返回参数结构体
    public struct RecognizePhilippinesVoteIDOCRResponse: TCResponse {
        /// 人像照片Base64后的结果
        public let headPortrait: TextDetectionResult

        /// 菲律宾VoteID的VIN
        public let vin: TextDetectionResult

        /// 姓名
        public let firstName: TextDetectionResult

        /// 姓氏
        public let lastName: TextDetectionResult

        /// 出生日期
        public let birthday: TextDetectionResult

        /// 婚姻状况
        public let civilStatus: TextDetectionResult

        /// 国籍
        public let citizenship: TextDetectionResult

        /// 地址
        public let address: TextDetectionResult

        /// 地区
        public let precinctNo: TextDetectionResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case headPortrait = "HeadPortrait"
            case vin = "VIN"
            case firstName = "FirstName"
            case lastName = "LastName"
            case birthday = "Birthday"
            case civilStatus = "CivilStatus"
            case citizenship = "Citizenship"
            case address = "Address"
            case precinctNo = "PrecinctNo"
            case requestId = "RequestId"
        }
    }

    /// 菲律宾VoteID识别
    ///
    /// 本接口支持菲律宾VoteID识别，识别字段包括姓名、姓氏、出生日期、婚姻状况、国籍、地址、地区、菲律宾VoteID的VIN等。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizePhilippinesVoteIDOCR(_ input: RecognizePhilippinesVoteIDOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizePhilippinesVoteIDOCRResponse> {
        self.client.execute(action: "RecognizePhilippinesVoteIDOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 菲律宾VoteID识别
    ///
    /// 本接口支持菲律宾VoteID识别，识别字段包括姓名、姓氏、出生日期、婚姻状况、国籍、地址、地区、菲律宾VoteID的VIN等。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizePhilippinesVoteIDOCR(_ input: RecognizePhilippinesVoteIDOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizePhilippinesVoteIDOCRResponse {
        try await self.client.execute(action: "RecognizePhilippinesVoteIDOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 菲律宾VoteID识别
    ///
    /// 本接口支持菲律宾VoteID识别，识别字段包括姓名、姓氏、出生日期、婚姻状况、国籍、地址、地区、菲律宾VoteID的VIN等。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizePhilippinesVoteIDOCR(returnHeadImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizePhilippinesVoteIDOCRResponse> {
        self.recognizePhilippinesVoteIDOCR(.init(returnHeadImage: returnHeadImage, imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 菲律宾VoteID识别
    ///
    /// 本接口支持菲律宾VoteID识别，识别字段包括姓名、姓氏、出生日期、婚姻状况、国籍、地址、地区、菲律宾VoteID的VIN等。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizePhilippinesVoteIDOCR(returnHeadImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizePhilippinesVoteIDOCRResponse {
        try await self.recognizePhilippinesVoteIDOCR(.init(returnHeadImage: returnHeadImage, imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }
}
