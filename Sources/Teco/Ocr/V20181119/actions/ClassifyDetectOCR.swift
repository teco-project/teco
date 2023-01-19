//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ClassifyDetectOCR请求参数结构体
    public struct ClassifyDetectOCRRequest: TCRequestModel {
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

        /// 可以指定要识别的票证类型,指定后不出现在此列表的票证将不返回类型。不指定时默认返回所有支持类别票证的识别信息。
        /// 以下是当前支持的类型：
        /// IDCardFront: 身份证正面识别
        /// IDCardBack: 身份证背面识别
        /// Passport: 护照
        /// BusinessCard: 名片识别
        /// BankCard: 银行卡识别
        /// VehicleLicenseFront: 行驶证主页识别
        /// VehicleLicenseBack: 行驶证副页识别
        /// DriverLicenseFront: 驾驶证主页识别
        /// DriverLicenseBack: 驾驶证副页识别
        /// PermitFront: 港澳台通行证正面
        /// ResidenceBooklet: 户口本资料页
        /// MainlandPermitFront: 港澳台来往内地通行证正面
        /// HmtResidentPermitFront: 港澳台居住证正面
        /// HmtResidentPermitBack: 港澳台居住证背面
        /// EstateCert: 不动产证
        /// BizLicense: 营业执照
        public let discernType: [String]?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, discernType: [String]? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.discernType = discernType
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case discernType = "DiscernType"
        }
    }

    /// ClassifyDetectOCR返回参数结构体
    public struct ClassifyDetectOCRResponse: TCResponseModel {
        /// 智能卡证分类结果。当图片类型不支持分类识别或者识别出的类型不在请求参数DiscernType指定的范围内时，返回结果中的Type字段将为空字符串，Name字段将返回"其它"
        public let classifyDetectInfos: [ClassifyDetectInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case classifyDetectInfos = "ClassifyDetectInfos"
            case requestId = "RequestId"
        }
    }

    /// 智能卡证分类
    ///
    /// 支持身份证、护照、名片、银行卡、行驶证、驾驶证、港澳台通行证、户口本、港澳台来往内地通行证、港澳台居住证、不动产证、营业执照的智能分类。
    @inlinable
    public func classifyDetectOCR(_ input: ClassifyDetectOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClassifyDetectOCRResponse> {
        self.client.execute(action: "ClassifyDetectOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智能卡证分类
    ///
    /// 支持身份证、护照、名片、银行卡、行驶证、驾驶证、港澳台通行证、户口本、港澳台来往内地通行证、港澳台居住证、不动产证、营业执照的智能分类。
    @inlinable
    public func classifyDetectOCR(_ input: ClassifyDetectOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClassifyDetectOCRResponse {
        try await self.client.execute(action: "ClassifyDetectOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智能卡证分类
    ///
    /// 支持身份证、护照、名片、银行卡、行驶证、驾驶证、港澳台通行证、户口本、港澳台来往内地通行证、港澳台居住证、不动产证、营业执照的智能分类。
    @inlinable
    public func classifyDetectOCR(imageBase64: String? = nil, imageUrl: String? = nil, discernType: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClassifyDetectOCRResponse> {
        self.classifyDetectOCR(ClassifyDetectOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, discernType: discernType), region: region, logger: logger, on: eventLoop)
    }

    /// 智能卡证分类
    ///
    /// 支持身份证、护照、名片、银行卡、行驶证、驾驶证、港澳台通行证、户口本、港澳台来往内地通行证、港澳台居住证、不动产证、营业执照的智能分类。
    @inlinable
    public func classifyDetectOCR(imageBase64: String? = nil, imageUrl: String? = nil, discernType: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClassifyDetectOCRResponse {
        try await self.classifyDetectOCR(ClassifyDetectOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, discernType: discernType), region: region, logger: logger, on: eventLoop)
    }
}
