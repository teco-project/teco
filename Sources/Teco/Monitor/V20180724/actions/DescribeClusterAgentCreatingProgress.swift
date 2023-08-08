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

extension Monitor {
    /// DescribeClusterAgentCreatingProgress请求参数结构体
    public struct DescribeClusterAgentCreatingProgressRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeClusterAgentCreatingProgress返回参数结构体
    public struct DescribeClusterAgentCreatingProgressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 获取集群绑定进度
    ///
    /// 获取prom实例中集群详细的关联状态
    @inlinable @discardableResult
    public func describeClusterAgentCreatingProgress(_ input: DescribeClusterAgentCreatingProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterAgentCreatingProgressResponse> {
        self.client.execute(action: "DescribeClusterAgentCreatingProgress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群绑定进度
    ///
    /// 获取prom实例中集群详细的关联状态
    @inlinable @discardableResult
    public func describeClusterAgentCreatingProgress(_ input: DescribeClusterAgentCreatingProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterAgentCreatingProgressResponse {
        try await self.client.execute(action: "DescribeClusterAgentCreatingProgress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群绑定进度
    ///
    /// 获取prom实例中集群详细的关联状态
    @inlinable @discardableResult
    public func describeClusterAgentCreatingProgress(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterAgentCreatingProgressResponse> {
        self.describeClusterAgentCreatingProgress(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群绑定进度
    ///
    /// 获取prom实例中集群详细的关联状态
    @inlinable @discardableResult
    public func describeClusterAgentCreatingProgress(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterAgentCreatingProgressResponse {
        try await self.describeClusterAgentCreatingProgress(.init(), region: region, logger: logger, on: eventLoop)
    }
}