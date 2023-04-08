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

extension Domain {
    /// CreateTemplate请求参数结构体
    public struct CreateTemplateRequest: TCRequestModel {
        /// 联系人信息
        public let contactInfo: ContactInfo

        /// 证件信息
        public let certificateInfo: CertificateInfo?

        public init(contactInfo: ContactInfo, certificateInfo: CertificateInfo? = nil) {
            self.contactInfo = contactInfo
            self.certificateInfo = certificateInfo
        }

        enum CodingKeys: String, CodingKey {
            case contactInfo = "ContactInfo"
            case certificateInfo = "CertificateInfo"
        }
    }

    /// CreateTemplate返回参数结构体
    public struct CreateTemplateResponse: TCResponseModel {
        /// 模板信息
        public let template: TemplateInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case template = "Template"
            case requestId = "RequestId"
        }
    }

    /// 添加域名信息模板
    ///
    /// 本接口 ( CreateTemplate ) 用于添加域名信息模板 。
    @inlinable
    public func createTemplate(_ input: CreateTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTemplateResponse> {
        self.client.execute(action: "CreateTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加域名信息模板
    ///
    /// 本接口 ( CreateTemplate ) 用于添加域名信息模板 。
    @inlinable
    public func createTemplate(_ input: CreateTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTemplateResponse {
        try await self.client.execute(action: "CreateTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加域名信息模板
    ///
    /// 本接口 ( CreateTemplate ) 用于添加域名信息模板 。
    @inlinable
    public func createTemplate(contactInfo: ContactInfo, certificateInfo: CertificateInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTemplateResponse> {
        self.createTemplate(.init(contactInfo: contactInfo, certificateInfo: certificateInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 添加域名信息模板
    ///
    /// 本接口 ( CreateTemplate ) 用于添加域名信息模板 。
    @inlinable
    public func createTemplate(contactInfo: ContactInfo, certificateInfo: CertificateInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTemplateResponse {
        try await self.createTemplate(.init(contactInfo: contactInfo, certificateInfo: certificateInfo), region: region, logger: logger, on: eventLoop)
    }
}
