//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tke {
    /// EnableClusterDeletionProtection请求参数结构体
    public struct EnableClusterDeletionProtectionRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// EnableClusterDeletionProtection返回参数结构体
    public struct EnableClusterDeletionProtectionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用集群删除保护
    @inlinable
    public func enableClusterDeletionProtection(_ input: EnableClusterDeletionProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableClusterDeletionProtectionResponse> {
        self.client.execute(action: "EnableClusterDeletionProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用集群删除保护
    @inlinable
    public func enableClusterDeletionProtection(_ input: EnableClusterDeletionProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableClusterDeletionProtectionResponse {
        try await self.client.execute(action: "EnableClusterDeletionProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用集群删除保护
    @inlinable
    public func enableClusterDeletionProtection(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableClusterDeletionProtectionResponse> {
        self.enableClusterDeletionProtection(EnableClusterDeletionProtectionRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 启用集群删除保护
    @inlinable
    public func enableClusterDeletionProtection(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableClusterDeletionProtectionResponse {
        try await self.enableClusterDeletionProtection(EnableClusterDeletionProtectionRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
