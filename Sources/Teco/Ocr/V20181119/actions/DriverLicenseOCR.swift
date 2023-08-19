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
    /// DriverLicenseOCR请求参数结构体
    public struct DriverLicenseOCRRequest: TCRequest {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。图片下载时间不超过 3 秒。
        /// 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        public let imageUrl: String?

        /// FRONT 为驾驶证主页正面（有红色印章的一面），
        /// BACK 为驾驶证副页正面（有档案编号的一面）。
        /// 默认值为：FRONT。
        public let cardSide: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.cardSide = cardSide
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case cardSide = "CardSide"
        }
    }

    /// DriverLicenseOCR返回参数结构体
    public struct DriverLicenseOCRResponse: TCResponse {
        /// 姓名
        public let name: String

        /// 性别
        public let sex: String

        /// 国籍
        public let nationality: String

        /// 住址
        public let address: String

        /// 出生日期（YYYY-MM-DD）
        public let dateOfBirth: String

        /// 初次领证日期（YYYY-MM-DD）
        public let dateOfFirstIssue: String

        /// 准驾车型
        public let `class`: String

        /// 有效期开始时间（YYYY-MM-DD）
        public let startDate: String

        /// 有效期截止时间（新版驾驶证返回 YYYY-MM-DD，
        /// 老版驾驶证返回有效期限 X年）
        public let endDate: String

        /// 证号
        public let cardCode: String

        /// 档案编号
        public let archivesCode: String

        /// 记录
        public let record: String

        /// Code 告警码列表和释义：
        /// -9102  复印件告警
        /// -9103  翻拍件告警
        /// 注：告警码可以同时存在多个
        public let recognizeWarnCode: [Int64]

        /// 告警码说明：
        /// WARN_DRIVER_LICENSE_COPY_CARD 复印件告警
        /// WARN_DRIVER_LICENSE_SCREENED_CARD 翻拍件告警
        /// 注：告警信息可以同时存在多个
        public let recognizeWarnMsg: [String]

        /// 发证单位
        public let issuingAuthority: String

        /// 状态（仅电子驾驶证支持返回该字段）
        public let state: String

        /// 累积记分（仅电子驾驶证支持返回该字段）
        public let cumulativeScore: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case sex = "Sex"
            case nationality = "Nationality"
            case address = "Address"
            case dateOfBirth = "DateOfBirth"
            case dateOfFirstIssue = "DateOfFirstIssue"
            case `class` = "Class"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case cardCode = "CardCode"
            case archivesCode = "ArchivesCode"
            case record = "Record"
            case recognizeWarnCode = "RecognizeWarnCode"
            case recognizeWarnMsg = "RecognizeWarnMsg"
            case issuingAuthority = "IssuingAuthority"
            case state = "State"
            case cumulativeScore = "CumulativeScore"
            case requestId = "RequestId"
        }
    }

    /// 驾驶证识别
    ///
    /// 本接口支持驾驶证主页和副页所有字段的自动定位与识别，重点字段的识别准确度达到99%以上。
    ///
    /// 驾驶证主页：包括证号、姓名、性别、国籍、住址、出生日期、初次领证日期、准驾车型、有效期限、发证单位
    ///
    /// 驾驶证副页：包括证号、姓名、档案编号、记录。
    ///
    /// 另外，本接口还支持复印件、翻拍告警功能。同时支持识别交管12123 APP发放的电子驾驶证正页。
    ///
    /// 电子驾驶证正页：包括证号、姓名、性别、国籍、出生日期、初次领证日期、准驾车型、有效期开始时间、有效期截止时间、档案编号、状态、累积记分。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func driverLicenseOCR(_ input: DriverLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DriverLicenseOCRResponse> {
        self.client.execute(action: "DriverLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 驾驶证识别
    ///
    /// 本接口支持驾驶证主页和副页所有字段的自动定位与识别，重点字段的识别准确度达到99%以上。
    ///
    /// 驾驶证主页：包括证号、姓名、性别、国籍、住址、出生日期、初次领证日期、准驾车型、有效期限、发证单位
    ///
    /// 驾驶证副页：包括证号、姓名、档案编号、记录。
    ///
    /// 另外，本接口还支持复印件、翻拍告警功能。同时支持识别交管12123 APP发放的电子驾驶证正页。
    ///
    /// 电子驾驶证正页：包括证号、姓名、性别、国籍、出生日期、初次领证日期、准驾车型、有效期开始时间、有效期截止时间、档案编号、状态、累积记分。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func driverLicenseOCR(_ input: DriverLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DriverLicenseOCRResponse {
        try await self.client.execute(action: "DriverLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 驾驶证识别
    ///
    /// 本接口支持驾驶证主页和副页所有字段的自动定位与识别，重点字段的识别准确度达到99%以上。
    ///
    /// 驾驶证主页：包括证号、姓名、性别、国籍、住址、出生日期、初次领证日期、准驾车型、有效期限、发证单位
    ///
    /// 驾驶证副页：包括证号、姓名、档案编号、记录。
    ///
    /// 另外，本接口还支持复印件、翻拍告警功能。同时支持识别交管12123 APP发放的电子驾驶证正页。
    ///
    /// 电子驾驶证正页：包括证号、姓名、性别、国籍、出生日期、初次领证日期、准驾车型、有效期开始时间、有效期截止时间、档案编号、状态、累积记分。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func driverLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DriverLicenseOCRResponse> {
        self.driverLicenseOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, cardSide: cardSide), region: region, logger: logger, on: eventLoop)
    }

    /// 驾驶证识别
    ///
    /// 本接口支持驾驶证主页和副页所有字段的自动定位与识别，重点字段的识别准确度达到99%以上。
    ///
    /// 驾驶证主页：包括证号、姓名、性别、国籍、住址、出生日期、初次领证日期、准驾车型、有效期限、发证单位
    ///
    /// 驾驶证副页：包括证号、姓名、档案编号、记录。
    ///
    /// 另外，本接口还支持复印件、翻拍告警功能。同时支持识别交管12123 APP发放的电子驾驶证正页。
    ///
    /// 电子驾驶证正页：包括证号、姓名、性别、国籍、出生日期、初次领证日期、准驾车型、有效期开始时间、有效期截止时间、档案编号、状态、累积记分。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func driverLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DriverLicenseOCRResponse {
        try await self.driverLicenseOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, cardSide: cardSide), region: region, logger: logger, on: eventLoop)
    }
}
