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
    /// RecognizeContainerOCR请求参数结构体
    public struct RecognizeContainerOCRRequest: TCRequestModel {
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

        public init(imageBase64: String? = nil, imageUrl: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
        }
    }

    /// RecognizeContainerOCR返回参数结构体
    public struct RecognizeContainerOCRResponse: TCResponseModel {
        /// 集装箱箱号
        public let containerId: String

        /// 集装箱类型
        public let containerType: String

        /// 集装箱总重量，单位：千克（KG）
        public let grossKG: String

        /// 集装箱总重量，单位：磅（LB）
        public let grossLB: String

        /// 集装箱有效承重，单位：千克（KG）
        public let payloadKG: String

        /// 集装箱有效承重，单位：磅（LB）
        public let payloadLB: String

        /// 集装箱容量，单位：立方米
        public let capacityM3: String

        /// 集装箱容量，单位：立英尺
        public let capacityFT3: String

        /// 告警码
        /// -9926	集装箱箱号不完整或者不清晰
        /// -9927	集装箱类型不完整或者不清晰
        public let warn: [Int64]

        /// 集装箱自身重量，单位：千克（KG）
        public let tareKG: String

        /// 集装箱自身重量，单位：磅（LB）
        public let tareLB: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerId = "ContainerId"
            case containerType = "ContainerType"
            case grossKG = "GrossKG"
            case grossLB = "GrossLB"
            case payloadKG = "PayloadKG"
            case payloadLB = "PayloadLB"
            case capacityM3 = "CapacityM3"
            case capacityFT3 = "CapacityFT3"
            case warn = "Warn"
            case tareKG = "TareKG"
            case tareLB = "TareLB"
            case requestId = "RequestId"
        }
    }

    /// 集装箱识别
    ///
    /// 本接口支持集装箱箱门信息识别，识别字段包括集装箱箱号、类型、总重量、有效承重、容量、自身重量，具备集装箱箱号、类型不完整或者不清晰的告警功能。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeContainerOCR(_ input: RecognizeContainerOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeContainerOCRResponse> {
        self.client.execute(action: "RecognizeContainerOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集装箱识别
    ///
    /// 本接口支持集装箱箱门信息识别，识别字段包括集装箱箱号、类型、总重量、有效承重、容量、自身重量，具备集装箱箱号、类型不完整或者不清晰的告警功能。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeContainerOCR(_ input: RecognizeContainerOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeContainerOCRResponse {
        try await self.client.execute(action: "RecognizeContainerOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集装箱识别
    ///
    /// 本接口支持集装箱箱门信息识别，识别字段包括集装箱箱号、类型、总重量、有效承重、容量、自身重量，具备集装箱箱号、类型不完整或者不清晰的告警功能。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeContainerOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeContainerOCRResponse> {
        self.recognizeContainerOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 集装箱识别
    ///
    /// 本接口支持集装箱箱门信息识别，识别字段包括集装箱箱号、类型、总重量、有效承重、容量、自身重量，具备集装箱箱号、类型不完整或者不清晰的告警功能。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeContainerOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeContainerOCRResponse {
        try await self.recognizeContainerOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }
}
