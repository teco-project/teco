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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Domain {
    /// BatchModifyDomainInfo请求参数结构体
    public struct BatchModifyDomainInfoRequest: TCRequestModel {
        /// 批量修改的域名。
        public let domains: [String]

        /// 模板ID。
        public let templateId: String

        /// true： 开启60天内禁止转移注册商锁定
        /// false：关闭60天内禁止转移注册商锁定
        /// 默认 true
        public let lockTransfer: Bool?

        public init(domains: [String], templateId: String, lockTransfer: Bool? = nil) {
            self.domains = domains
            self.templateId = templateId
            self.lockTransfer = lockTransfer
        }

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case templateId = "TemplateId"
            case lockTransfer = "LockTransfer"
        }
    }

    /// BatchModifyDomainInfo返回参数结构体
    public struct BatchModifyDomainInfoResponse: TCResponseModel {
        /// 日志ID
        public let logId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case requestId = "RequestId"
        }
    }

    /// 批量域名信息修改
    ///
    /// 本接口 ( BatchModifyDomainInfo ) 用于批量域名信息修改 。
    @inlinable
    public func batchModifyDomainInfo(_ input: BatchModifyDomainInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyDomainInfoResponse> {
        self.client.execute(action: "BatchModifyDomainInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量域名信息修改
    ///
    /// 本接口 ( BatchModifyDomainInfo ) 用于批量域名信息修改 。
    @inlinable
    public func batchModifyDomainInfo(_ input: BatchModifyDomainInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyDomainInfoResponse {
        try await self.client.execute(action: "BatchModifyDomainInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量域名信息修改
    ///
    /// 本接口 ( BatchModifyDomainInfo ) 用于批量域名信息修改 。
    @inlinable
    public func batchModifyDomainInfo(domains: [String], templateId: String, lockTransfer: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyDomainInfoResponse> {
        self.batchModifyDomainInfo(.init(domains: domains, templateId: templateId, lockTransfer: lockTransfer), region: region, logger: logger, on: eventLoop)
    }

    /// 批量域名信息修改
    ///
    /// 本接口 ( BatchModifyDomainInfo ) 用于批量域名信息修改 。
    @inlinable
    public func batchModifyDomainInfo(domains: [String], templateId: String, lockTransfer: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyDomainInfoResponse {
        try await self.batchModifyDomainInfo(.init(domains: domains, templateId: templateId, lockTransfer: lockTransfer), region: region, logger: logger, on: eventLoop)
    }
}
