//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Sslpod {
    /// RefreshDomain请求参数结构体
    public struct RefreshDomainRequest: TCRequestModel {
        /// 域名列表中的ID，可通过搜索域名接口获得
        public let domainId: Int64

        public init(domainId: Int64) {
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
        }
    }

    /// RefreshDomain返回参数结构体
    public struct RefreshDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重新检测域名
    ///
    /// 强制重新检测域名
    @inlinable
    public func refreshDomain(_ input: RefreshDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RefreshDomainResponse > {
        self.client.execute(action: "RefreshDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新检测域名
    ///
    /// 强制重新检测域名
    @inlinable
    public func refreshDomain(_ input: RefreshDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshDomainResponse {
        try await self.client.execute(action: "RefreshDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新检测域名
    ///
    /// 强制重新检测域名
    @inlinable
    public func refreshDomain(domainId: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RefreshDomainResponse > {
        self.refreshDomain(RefreshDomainRequest(domainId: domainId), logger: logger, on: eventLoop)
    }

    /// 重新检测域名
    ///
    /// 强制重新检测域名
    @inlinable
    public func refreshDomain(domainId: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshDomainResponse {
        try await self.refreshDomain(RefreshDomainRequest(domainId: domainId), logger: logger, on: eventLoop)
    }
}
