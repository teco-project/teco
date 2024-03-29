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

extension Tke {
    /// DisableClusterDeletionProtection请求参数结构体
    public struct DisableClusterDeletionProtectionRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DisableClusterDeletionProtection返回参数结构体
    public struct DisableClusterDeletionProtectionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关闭集群删除保护
    @inlinable @discardableResult
    public func disableClusterDeletionProtection(_ input: DisableClusterDeletionProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableClusterDeletionProtectionResponse> {
        self.client.execute(action: "DisableClusterDeletionProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭集群删除保护
    @inlinable @discardableResult
    public func disableClusterDeletionProtection(_ input: DisableClusterDeletionProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableClusterDeletionProtectionResponse {
        try await self.client.execute(action: "DisableClusterDeletionProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭集群删除保护
    @inlinable @discardableResult
    public func disableClusterDeletionProtection(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableClusterDeletionProtectionResponse> {
        self.disableClusterDeletionProtection(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭集群删除保护
    @inlinable @discardableResult
    public func disableClusterDeletionProtection(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableClusterDeletionProtectionResponse {
        try await self.disableClusterDeletionProtection(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
