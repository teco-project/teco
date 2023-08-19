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

extension Dnspod {
    /// DescribeSnapshotConfig请求参数结构体
    public struct DescribeSnapshotConfigRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, domainId: UInt64? = nil) {
            self.domain = domain
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
        }
    }

    /// DescribeSnapshotConfig返回参数结构体
    public struct DescribeSnapshotConfigResponse: TCResponse {
        /// 解析快照配置
        public let snapshotConfig: SnapshotConfig

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case snapshotConfig = "SnapshotConfig"
            case requestId = "RequestId"
        }
    }

    /// 查询解析快照配置
    @inlinable
    public func describeSnapshotConfig(_ input: DescribeSnapshotConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotConfigResponse> {
        self.client.execute(action: "DescribeSnapshotConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询解析快照配置
    @inlinable
    public func describeSnapshotConfig(_ input: DescribeSnapshotConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotConfigResponse {
        try await self.client.execute(action: "DescribeSnapshotConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询解析快照配置
    @inlinable
    public func describeSnapshotConfig(domain: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotConfigResponse> {
        self.describeSnapshotConfig(.init(domain: domain, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询解析快照配置
    @inlinable
    public func describeSnapshotConfig(domain: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotConfigResponse {
        try await self.describeSnapshotConfig(.init(domain: domain, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
