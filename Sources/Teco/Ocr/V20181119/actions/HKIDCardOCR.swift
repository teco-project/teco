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
    /// HKIDCardOCR请求参数结构体
    public struct HKIDCardOCRRequest: TCRequestModel {
        /// 是否鉴伪。
        public let detectFake: Bool

        /// 是否返回人像照片。
        public let returnHeadImage: Bool

        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        public let imageBase64: String?

        /// 图片的 Url 地址。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        public init(detectFake: Bool, returnHeadImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil) {
            self.detectFake = detectFake
            self.returnHeadImage = returnHeadImage
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
        }

        enum CodingKeys: String, CodingKey {
            case detectFake = "DetectFake"
            case returnHeadImage = "ReturnHeadImage"
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
        }
    }

    /// HKIDCardOCR返回参数结构体
    public struct HKIDCardOCRResponse: TCResponseModel {
        /// 中文姓名
        public let cnName: String

        /// 英文姓名
        public let enName: String

        /// 中文姓名对应电码
        public let telexCode: String

        /// 性别 ：“男M”或“女F”
        public let sex: String

        /// 出生日期
        public let birthday: String

        /// 永久性居民身份证。
        /// 0：非永久；
        /// 1：永久；
        /// -1：未知。
        public let permanent: Int64

        /// 身份证号码
        public let idNum: String

        /// 证件符号，出生日期下的符号，例如"***AZ"
        public let symbol: String

        /// 首次签发日期
        public let firstIssueDate: String

        /// 最近领用日期
        public let currentIssueDate: String

        /// 真假判断。
        /// 0：无法判断（图像模糊、不完整、反光、过暗等导致无法判断）；
        /// 1：假；
        /// 2：真。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeDetectResult: Int64?

        /// 人像照片Base64后的结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let headImage: String?

        /// 多重告警码，当身份证是翻拍、复印、PS件时返回对应告警码。
        /// -9102：证照复印件告警
        /// -9103：证照翻拍告警
        /// -9104：证照PS告警
        public let warningCode: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cnName = "CnName"
            case enName = "EnName"
            case telexCode = "TelexCode"
            case sex = "Sex"
            case birthday = "Birthday"
            case permanent = "Permanent"
            case idNum = "IdNum"
            case symbol = "Symbol"
            case firstIssueDate = "FirstIssueDate"
            case currentIssueDate = "CurrentIssueDate"
            case fakeDetectResult = "FakeDetectResult"
            case headImage = "HeadImage"
            case warningCode = "WarningCode"
            case requestId = "RequestId"
        }
    }

    /// 中国香港身份证识别
    ///
    /// 本接口支持中国香港身份证人像面中关键字段的识别，包括中文姓名、英文姓名、姓名电码、出生日期、性别、证件符号、首次签发日期、最近领用日期、身份证号、是否是永久性居民身份证；具备防伪识别、人像照片裁剪等扩展功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func hkidCardOCR(_ input: HKIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HKIDCardOCRResponse> {
        self.client.execute(action: "HKIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 中国香港身份证识别
    ///
    /// 本接口支持中国香港身份证人像面中关键字段的识别，包括中文姓名、英文姓名、姓名电码、出生日期、性别、证件符号、首次签发日期、最近领用日期、身份证号、是否是永久性居民身份证；具备防伪识别、人像照片裁剪等扩展功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func hkidCardOCR(_ input: HKIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HKIDCardOCRResponse {
        try await self.client.execute(action: "HKIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 中国香港身份证识别
    ///
    /// 本接口支持中国香港身份证人像面中关键字段的识别，包括中文姓名、英文姓名、姓名电码、出生日期、性别、证件符号、首次签发日期、最近领用日期、身份证号、是否是永久性居民身份证；具备防伪识别、人像照片裁剪等扩展功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func hkidCardOCR(detectFake: Bool, returnHeadImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HKIDCardOCRResponse> {
        let input = HKIDCardOCRRequest(detectFake: detectFake, returnHeadImage: returnHeadImage, imageBase64: imageBase64, imageUrl: imageUrl)
        return self.client.execute(action: "HKIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 中国香港身份证识别
    ///
    /// 本接口支持中国香港身份证人像面中关键字段的识别，包括中文姓名、英文姓名、姓名电码、出生日期、性别、证件符号、首次签发日期、最近领用日期、身份证号、是否是永久性居民身份证；具备防伪识别、人像照片裁剪等扩展功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func hkidCardOCR(detectFake: Bool, returnHeadImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HKIDCardOCRResponse {
        let input = HKIDCardOCRRequest(detectFake: detectFake, returnHeadImage: returnHeadImage, imageBase64: imageBase64, imageUrl: imageUrl)
        return try await self.client.execute(action: "HKIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
