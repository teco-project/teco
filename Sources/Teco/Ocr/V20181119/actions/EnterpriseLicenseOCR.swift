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
    /// EnterpriseLicenseOCR请求参数结构体
    public struct EnterpriseLicenseOCRRequest: TCRequestModel {
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

    /// EnterpriseLicenseOCR返回参数结构体
    public struct EnterpriseLicenseOCRResponse: TCResponseModel {
        /// 企业证照识别结果，具体内容请点击左侧链接。
        public let enterpriseLicenseInfos: [EnterpriseLicenseInfo]

        /// 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        public let angle: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case enterpriseLicenseInfos = "EnterpriseLicenseInfos"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }

    /// 企业证照识别
    ///
    /// 本接口支持智能化识别各类企业登记证书、许可证书、企业执照、三证合一类证书，结构化输出统一社会信用代码、公司名称、法定代表人、公司地址、注册资金、企业类型、经营范围等关键字段。
    @inlinable
    public func enterpriseLicenseOCR(_ input: EnterpriseLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnterpriseLicenseOCRResponse> {
        self.client.execute(action: "EnterpriseLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 企业证照识别
    ///
    /// 本接口支持智能化识别各类企业登记证书、许可证书、企业执照、三证合一类证书，结构化输出统一社会信用代码、公司名称、法定代表人、公司地址、注册资金、企业类型、经营范围等关键字段。
    @inlinable
    public func enterpriseLicenseOCR(_ input: EnterpriseLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnterpriseLicenseOCRResponse {
        try await self.client.execute(action: "EnterpriseLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 企业证照识别
    ///
    /// 本接口支持智能化识别各类企业登记证书、许可证书、企业执照、三证合一类证书，结构化输出统一社会信用代码、公司名称、法定代表人、公司地址、注册资金、企业类型、经营范围等关键字段。
    @inlinable
    public func enterpriseLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnterpriseLicenseOCRResponse> {
        self.enterpriseLicenseOCR(EnterpriseLicenseOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 企业证照识别
    ///
    /// 本接口支持智能化识别各类企业登记证书、许可证书、企业执照、三证合一类证书，结构化输出统一社会信用代码、公司名称、法定代表人、公司地址、注册资金、企业类型、经营范围等关键字段。
    @inlinable
    public func enterpriseLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnterpriseLicenseOCRResponse {
        try await self.enterpriseLicenseOCR(EnterpriseLicenseOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }
}
