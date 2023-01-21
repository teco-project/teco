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

extension Ocr {
    /// HmtResidentPermitOCR请求参数结构体
    public struct HmtResidentPermitOCRRequest: TCRequestModel {
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

        /// FRONT：有照片的一面（人像面），
        /// BACK：无照片的一面（国徽面），
        /// 该参数如果不填或填错，将为您自动判断正反面。
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

    /// HmtResidentPermitOCR返回参数结构体
    public struct HmtResidentPermitOCRResponse: TCResponseModel {
        /// 证件姓名
        public let name: String

        /// 性别
        public let sex: String

        /// 出生日期
        public let birth: String

        /// 地址
        public let address: String

        /// 身份证号
        public let idCardNo: String

        /// 0-正面
        /// 1-反面
        public let cardType: Int64

        /// 证件有效期限
        public let validDate: String

        /// 签发机关
        public let authority: String

        /// 签发次数
        public let visaNum: String

        /// 通行证号码
        public let passNo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case sex = "Sex"
            case birth = "Birth"
            case address = "Address"
            case idCardNo = "IdCardNo"
            case cardType = "CardType"
            case validDate = "ValidDate"
            case authority = "Authority"
            case visaNum = "VisaNum"
            case passNo = "PassNo"
            case requestId = "RequestId"
        }
    }

    /// 港澳台居住证识别
    ///
    /// 港澳台居住证OCR支持港澳台居住证正反面全字段内容检测识别功能，包括姓名、性别、出生日期、地址、身份证ID、签发机关、有效期限、签发次数、通行证号码关键字段识别。可以应用于港澳台居住证信息有效性校验场景，例如银行开户、用户注册等场景。
    @inlinable
    public func hmtResidentPermitOCR(_ input: HmtResidentPermitOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HmtResidentPermitOCRResponse> {
        self.client.execute(action: "HmtResidentPermitOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 港澳台居住证识别
    ///
    /// 港澳台居住证OCR支持港澳台居住证正反面全字段内容检测识别功能，包括姓名、性别、出生日期、地址、身份证ID、签发机关、有效期限、签发次数、通行证号码关键字段识别。可以应用于港澳台居住证信息有效性校验场景，例如银行开户、用户注册等场景。
    @inlinable
    public func hmtResidentPermitOCR(_ input: HmtResidentPermitOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HmtResidentPermitOCRResponse {
        try await self.client.execute(action: "HmtResidentPermitOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 港澳台居住证识别
    ///
    /// 港澳台居住证OCR支持港澳台居住证正反面全字段内容检测识别功能，包括姓名、性别、出生日期、地址、身份证ID、签发机关、有效期限、签发次数、通行证号码关键字段识别。可以应用于港澳台居住证信息有效性校验场景，例如银行开户、用户注册等场景。
    @inlinable
    public func hmtResidentPermitOCR(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HmtResidentPermitOCRResponse> {
        self.hmtResidentPermitOCR(HmtResidentPermitOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, cardSide: cardSide), region: region, logger: logger, on: eventLoop)
    }

    /// 港澳台居住证识别
    ///
    /// 港澳台居住证OCR支持港澳台居住证正反面全字段内容检测识别功能，包括姓名、性别、出生日期、地址、身份证ID、签发机关、有效期限、签发次数、通行证号码关键字段识别。可以应用于港澳台居住证信息有效性校验场景，例如银行开户、用户注册等场景。
    @inlinable
    public func hmtResidentPermitOCR(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HmtResidentPermitOCRResponse {
        try await self.hmtResidentPermitOCR(HmtResidentPermitOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, cardSide: cardSide), region: region, logger: logger, on: eventLoop)
    }
}
