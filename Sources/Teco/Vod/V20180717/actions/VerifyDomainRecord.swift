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

extension Vod {
    /// VerifyDomainRecord请求参数结构体
    public struct VerifyDomainRecordRequest: TCRequest {
        /// 需要接入点播的加速域名。
        public let domain: String

        /// 验证方式：
        /// - dns：DNS 解析验证；
        /// - fIle：文件验证。
        ///
        /// 默认值：dns。
        public let verifyType: String?

        public init(domain: String, verifyType: String? = nil) {
            self.domain = domain
            self.verifyType = verifyType
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case verifyType = "VerifyType"
        }
    }

    /// VerifyDomainRecord返回参数结构体
    public struct VerifyDomainRecordResponse: TCResponse {
        /// 是否验证成功。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 验证域名解析
    ///
    /// 该接口用于验证域名解析值。
    @inlinable
    public func verifyDomainRecord(_ input: VerifyDomainRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyDomainRecordResponse> {
        self.client.execute(action: "VerifyDomainRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证域名解析
    ///
    /// 该接口用于验证域名解析值。
    @inlinable
    public func verifyDomainRecord(_ input: VerifyDomainRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyDomainRecordResponse {
        try await self.client.execute(action: "VerifyDomainRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证域名解析
    ///
    /// 该接口用于验证域名解析值。
    @inlinable
    public func verifyDomainRecord(domain: String, verifyType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyDomainRecordResponse> {
        self.verifyDomainRecord(.init(domain: domain, verifyType: verifyType), region: region, logger: logger, on: eventLoop)
    }

    /// 验证域名解析
    ///
    /// 该接口用于验证域名解析值。
    @inlinable
    public func verifyDomainRecord(domain: String, verifyType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyDomainRecordResponse {
        try await self.verifyDomainRecord(.init(domain: domain, verifyType: verifyType), region: region, logger: logger, on: eventLoop)
    }
}
