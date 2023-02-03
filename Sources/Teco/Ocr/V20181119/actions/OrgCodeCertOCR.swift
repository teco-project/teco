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
    /// OrgCodeCertOCR请求参数结构体
    public struct OrgCodeCertOCRRequest: TCRequestModel {
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

    /// OrgCodeCertOCR返回参数结构体
    public struct OrgCodeCertOCRResponse: TCResponseModel {
        /// 代码
        public let orgCode: String

        /// 机构名称
        public let name: String

        /// 地址
        public let address: String

        /// 有效期
        public let validDate: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orgCode = "OrgCode"
            case name = "Name"
            case address = "Address"
            case validDate = "ValidDate"
            case requestId = "RequestId"
        }
    }

    /// 组织机构代码证识别
    ///
    /// 本接口支持组织机构代码证关键字段的识别，包括代码、有效期、地址、机构名称等。
    @inlinable
    public func orgCodeCertOCR(_ input: OrgCodeCertOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OrgCodeCertOCRResponse> {
        self.client.execute(action: "OrgCodeCertOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 组织机构代码证识别
    ///
    /// 本接口支持组织机构代码证关键字段的识别，包括代码、有效期、地址、机构名称等。
    @inlinable
    public func orgCodeCertOCR(_ input: OrgCodeCertOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OrgCodeCertOCRResponse {
        try await self.client.execute(action: "OrgCodeCertOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 组织机构代码证识别
    ///
    /// 本接口支持组织机构代码证关键字段的识别，包括代码、有效期、地址、机构名称等。
    @inlinable
    public func orgCodeCertOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OrgCodeCertOCRResponse> {
        let input = OrgCodeCertOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl)
        return self.client.execute(action: "OrgCodeCertOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 组织机构代码证识别
    ///
    /// 本接口支持组织机构代码证关键字段的识别，包括代码、有效期、地址、机构名称等。
    @inlinable
    public func orgCodeCertOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OrgCodeCertOCRResponse {
        let input = OrgCodeCertOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl)
        return try await self.client.execute(action: "OrgCodeCertOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
