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

extension Dnspod {
    /// ModifyDomainLock请求参数结构体
    public struct ModifyDomainLockRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 域名要锁定的天数，最多可锁定的天数可以通过获取域名权限接口获取。
        public let lockDays: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        public init(domain: String, lockDays: UInt64, domainId: UInt64? = nil) {
            self.domain = domain
            self.lockDays = lockDays
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case lockDays = "LockDays"
            case domainId = "DomainId"
        }
    }

    /// ModifyDomainLock返回参数结构体
    public struct ModifyDomainLockResponse: TCResponseModel {
        /// 域名锁定信息
        public let lockInfo: LockInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case lockInfo = "LockInfo"
            case requestId = "RequestId"
        }
    }

    /// 锁定域名
    @inlinable
    public func modifyDomainLock(_ input: ModifyDomainLockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainLockResponse> {
        self.client.execute(action: "ModifyDomainLock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 锁定域名
    @inlinable
    public func modifyDomainLock(_ input: ModifyDomainLockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainLockResponse {
        try await self.client.execute(action: "ModifyDomainLock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 锁定域名
    @inlinable
    public func modifyDomainLock(domain: String, lockDays: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainLockResponse> {
        self.modifyDomainLock(.init(domain: domain, lockDays: lockDays, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 锁定域名
    @inlinable
    public func modifyDomainLock(domain: String, lockDays: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainLockResponse {
        try await self.modifyDomainLock(.init(domain: domain, lockDays: lockDays, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
