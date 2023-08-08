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
    /// BizLicenseOCR请求参数结构体
    public struct BizLicenseOCRRequest: TCRequestModel {
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

        /// 是否返回黑白复印件告警码，默认为false
        public let enableCopyWarn: Bool?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, enableCopyWarn: Bool? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.enableCopyWarn = enableCopyWarn
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case enableCopyWarn = "EnableCopyWarn"
        }
    }

    /// BizLicenseOCR返回参数结构体
    public struct BizLicenseOCRResponse: TCResponseModel {
        /// 统一社会信用代码（三合一之前为注册号）
        public let regNum: String

        /// 公司名称
        public let name: String

        /// 注册资本
        public let capital: String

        /// 法定代表人
        public let person: String

        /// 地址
        public let address: String

        /// 经营范围
        public let business: String

        /// 主体类型
        public let type: String

        /// 营业期限
        public let period: String

        /// 组成形式
        public let composingForm: String

        /// 成立日期
        public let setDate: String

        /// Code 告警码列表和释义：
        /// -9102 黑白复印件告警
        public let recognizeWarnCode: [Int64]

        /// 告警码说明：
        /// WARN_COPY_CARD 黑白复印件告警
        public let recognizeWarnMsg: [String]

        /// 是否为副本。1为是，-1为不是。
        public let isDuplication: Int64

        /// 登记日期
        public let registrationDate: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regNum = "RegNum"
            case name = "Name"
            case capital = "Capital"
            case person = "Person"
            case address = "Address"
            case business = "Business"
            case type = "Type"
            case period = "Period"
            case composingForm = "ComposingForm"
            case setDate = "SetDate"
            case recognizeWarnCode = "RecognizeWarnCode"
            case recognizeWarnMsg = "RecognizeWarnMsg"
            case isDuplication = "IsDuplication"
            case registrationDate = "RegistrationDate"
            case requestId = "RequestId"
        }
    }

    /// 营业执照识别
    ///
    /// 本接口支持快速精准识别营业执照上的字段，包括统一社会信用代码、公司名称、主体类型、法定代表人、注册资本、组成形式、成立日期、营业期限和经营范围等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func bizLicenseOCR(_ input: BizLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BizLicenseOCRResponse> {
        self.client.execute(action: "BizLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 营业执照识别
    ///
    /// 本接口支持快速精准识别营业执照上的字段，包括统一社会信用代码、公司名称、主体类型、法定代表人、注册资本、组成形式、成立日期、营业期限和经营范围等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func bizLicenseOCR(_ input: BizLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BizLicenseOCRResponse {
        try await self.client.execute(action: "BizLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 营业执照识别
    ///
    /// 本接口支持快速精准识别营业执照上的字段，包括统一社会信用代码、公司名称、主体类型、法定代表人、注册资本、组成形式、成立日期、营业期限和经营范围等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func bizLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, enableCopyWarn: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BizLicenseOCRResponse> {
        self.bizLicenseOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, enableCopyWarn: enableCopyWarn), region: region, logger: logger, on: eventLoop)
    }

    /// 营业执照识别
    ///
    /// 本接口支持快速精准识别营业执照上的字段，包括统一社会信用代码、公司名称、主体类型、法定代表人、注册资本、组成形式、成立日期、营业期限和经营范围等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func bizLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, enableCopyWarn: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BizLicenseOCRResponse {
        try await self.bizLicenseOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, enableCopyWarn: enableCopyWarn), region: region, logger: logger, on: eventLoop)
    }
}
