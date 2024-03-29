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

extension Lighthouse {
    /// DescribeCcnAttachedInstances请求参数结构体
    public struct DescribeCcnAttachedInstancesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeCcnAttachedInstances返回参数结构体
    public struct DescribeCcnAttachedInstancesResponse: TCResponse {
        /// 云联网关联的实例列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ccnAttachedInstanceSet: [CcnAttachedInstance]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ccnAttachedInstanceSet = "CcnAttachedInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 查询云联网关联的实例信息
    ///
    /// 本接口 (DescribeCcnAttachedInstances) 用于查询云联网关联的实例信息。
    @inlinable
    public func describeCcnAttachedInstances(_ input: DescribeCcnAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnAttachedInstancesResponse> {
        self.client.execute(action: "DescribeCcnAttachedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云联网关联的实例信息
    ///
    /// 本接口 (DescribeCcnAttachedInstances) 用于查询云联网关联的实例信息。
    @inlinable
    public func describeCcnAttachedInstances(_ input: DescribeCcnAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnAttachedInstancesResponse {
        try await self.client.execute(action: "DescribeCcnAttachedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云联网关联的实例信息
    ///
    /// 本接口 (DescribeCcnAttachedInstances) 用于查询云联网关联的实例信息。
    @inlinable
    public func describeCcnAttachedInstances(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnAttachedInstancesResponse> {
        self.describeCcnAttachedInstances(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云联网关联的实例信息
    ///
    /// 本接口 (DescribeCcnAttachedInstances) 用于查询云联网关联的实例信息。
    @inlinable
    public func describeCcnAttachedInstances(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnAttachedInstancesResponse {
        try await self.describeCcnAttachedInstances(.init(), region: region, logger: logger, on: eventLoop)
    }
}
