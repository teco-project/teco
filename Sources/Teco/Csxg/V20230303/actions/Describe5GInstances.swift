//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Csxg {
    /// Describe5GInstances请求参数结构体
    public struct Describe5GInstancesRequest: TCRequest {
        public init() {
        }
    }

    /// Describe5GInstances返回参数结构体
    public struct Describe5GInstancesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询5G入云服务
    @inlinable @discardableResult
    public func describe5GInstances(_ input: Describe5GInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Describe5GInstancesResponse> {
        self.client.execute(action: "Describe5GInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询5G入云服务
    @inlinable @discardableResult
    public func describe5GInstances(_ input: Describe5GInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Describe5GInstancesResponse {
        try await self.client.execute(action: "Describe5GInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询5G入云服务
    @inlinable @discardableResult
    public func describe5GInstances(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Describe5GInstancesResponse> {
        self.describe5GInstances(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询5G入云服务
    @inlinable @discardableResult
    public func describe5GInstances(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Describe5GInstancesResponse {
        try await self.describe5GInstances(.init(), region: region, logger: logger, on: eventLoop)
    }
}
