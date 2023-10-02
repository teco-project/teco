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
    /// CreateDomainVerifyRecord请求参数结构体
    public struct CreateDomainVerifyRecordRequest: TCRequest {
        public init() {
        }
    }

    /// CreateDomainVerifyRecord返回参数结构体
    public struct CreateDomainVerifyRecordResponse: TCResponse {
        /// DNS解析信息
        public let dnsVerifyInfo: DNSVerifyInfo?

        /// 文件验证信息
        public let fileVerifyInfo: FileVerifyInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dnsVerifyInfo = "DNSVerifyInfo"
            case fileVerifyInfo = "FileVerifyInfo"
            case requestId = "RequestId"
        }
    }

    /// 生成域名解析记录
    ///
    /// 该接口用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    @inlinable
    public func createDomainVerifyRecord(_ input: CreateDomainVerifyRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainVerifyRecordResponse> {
        self.client.execute(action: "CreateDomainVerifyRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成域名解析记录
    ///
    /// 该接口用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    @inlinable
    public func createDomainVerifyRecord(_ input: CreateDomainVerifyRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainVerifyRecordResponse {
        try await self.client.execute(action: "CreateDomainVerifyRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成域名解析记录
    ///
    /// 该接口用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    @inlinable
    public func createDomainVerifyRecord(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainVerifyRecordResponse> {
        self.createDomainVerifyRecord(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 生成域名解析记录
    ///
    /// 该接口用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    @inlinable
    public func createDomainVerifyRecord(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainVerifyRecordResponse {
        try await self.createDomainVerifyRecord(.init(), region: region, logger: logger, on: eventLoop)
    }
}
