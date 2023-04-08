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

extension Yunjing {
    /// IgnoreImpactedHosts请求参数结构体
    public struct IgnoreImpactedHostsRequest: TCRequestModel {
        /// 漏洞ID数组。
        public let ids: [UInt64]

        public init(ids: [UInt64]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// IgnoreImpactedHosts返回参数结构体
    public struct IgnoreImpactedHostsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 忽略漏洞
    ///
    /// 本接口 (IgnoreImpactedHosts) 用于忽略漏洞。
    @inlinable @discardableResult
    public func ignoreImpactedHosts(_ input: IgnoreImpactedHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IgnoreImpactedHostsResponse> {
        self.client.execute(action: "IgnoreImpactedHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 忽略漏洞
    ///
    /// 本接口 (IgnoreImpactedHosts) 用于忽略漏洞。
    @inlinable @discardableResult
    public func ignoreImpactedHosts(_ input: IgnoreImpactedHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IgnoreImpactedHostsResponse {
        try await self.client.execute(action: "IgnoreImpactedHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 忽略漏洞
    ///
    /// 本接口 (IgnoreImpactedHosts) 用于忽略漏洞。
    @inlinable @discardableResult
    public func ignoreImpactedHosts(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IgnoreImpactedHostsResponse> {
        self.ignoreImpactedHosts(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 忽略漏洞
    ///
    /// 本接口 (IgnoreImpactedHosts) 用于忽略漏洞。
    @inlinable @discardableResult
    public func ignoreImpactedHosts(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IgnoreImpactedHostsResponse {
        try await self.ignoreImpactedHosts(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
