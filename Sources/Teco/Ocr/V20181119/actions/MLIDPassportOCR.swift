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
    /// MLIDPassportOCR请求参数结构体
    public struct MLIDPassportOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        public let imageBase64: String

        /// 是否返回图片，默认false
        public let retImage: Bool?

        public init(imageBase64: String, retImage: Bool? = nil) {
            self.imageBase64 = imageBase64
            self.retImage = retImage
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case retImage = "RetImage"
        }
    }

    /// MLIDPassportOCR返回参数结构体
    public struct MLIDPassportOCRResponse: TCResponseModel {
        /// 护照ID
        public let id: String

        /// 姓名
        public let name: String

        /// 出生日期
        public let dateOfBirth: String

        /// 性别（F女，M男）
        public let sex: String

        /// 有效期
        public let dateOfExpiration: String

        /// 发行国
        public let issuingCountry: String

        /// 国家地区代码
        public let nationality: String

        /// 告警码
        /// -9103	证照翻拍告警
        /// -9102	证照复印件告警（包括黑白复印件、彩色复印件）
        /// -9106       证件遮挡告警
        public let warn: [Int64]

        /// 证件图片
        public let image: String

        /// 扩展字段:
        /// {
        ///     ID:{
        ///         Confidence:0.9999
        ///     },
        ///     Name:{
        ///         Confidence:0.9996
        ///     }
        /// }
        public let advancedInfo: String

        /// 最下方第一行 MRZ Code 序列
        public let codeSet: String

        /// 最下方第二行 MRZ Code 序列
        public let codeCrc: String

        /// 姓
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let surname: String?

        /// 名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let givenName: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case name = "Name"
            case dateOfBirth = "DateOfBirth"
            case sex = "Sex"
            case dateOfExpiration = "DateOfExpiration"
            case issuingCountry = "IssuingCountry"
            case nationality = "Nationality"
            case warn = "Warn"
            case image = "Image"
            case advancedInfo = "AdvancedInfo"
            case codeSet = "CodeSet"
            case codeCrc = "CodeCrc"
            case surname = "Surname"
            case givenName = "GivenName"
            case requestId = "RequestId"
        }
    }

    /// 护照识别（港澳台地区及境外护照）
    ///
    /// 本接口支持中国港澳台地区以及其他国家、地区的护照识别。识别字段包括护照ID、姓名、出生日期、性别、有效期、发行国、国籍，具备护照人像照片的裁剪功能和翻拍、复印件告警功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mlidPassportOCR(_ input: MLIDPassportOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MLIDPassportOCRResponse> {
        self.client.execute(action: "MLIDPassportOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 护照识别（港澳台地区及境外护照）
    ///
    /// 本接口支持中国港澳台地区以及其他国家、地区的护照识别。识别字段包括护照ID、姓名、出生日期、性别、有效期、发行国、国籍，具备护照人像照片的裁剪功能和翻拍、复印件告警功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mlidPassportOCR(_ input: MLIDPassportOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MLIDPassportOCRResponse {
        try await self.client.execute(action: "MLIDPassportOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 护照识别（港澳台地区及境外护照）
    ///
    /// 本接口支持中国港澳台地区以及其他国家、地区的护照识别。识别字段包括护照ID、姓名、出生日期、性别、有效期、发行国、国籍，具备护照人像照片的裁剪功能和翻拍、复印件告警功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mlidPassportOCR(imageBase64: String, retImage: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MLIDPassportOCRResponse> {
        self.mlidPassportOCR(.init(imageBase64: imageBase64, retImage: retImage), region: region, logger: logger, on: eventLoop)
    }

    /// 护照识别（港澳台地区及境外护照）
    ///
    /// 本接口支持中国港澳台地区以及其他国家、地区的护照识别。识别字段包括护照ID、姓名、出生日期、性别、有效期、发行国、国籍，具备护照人像照片的裁剪功能和翻拍、复印件告警功能。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mlidPassportOCR(imageBase64: String, retImage: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MLIDPassportOCRResponse {
        try await self.mlidPassportOCR(.init(imageBase64: imageBase64, retImage: retImage), region: region, logger: logger, on: eventLoop)
    }
}
