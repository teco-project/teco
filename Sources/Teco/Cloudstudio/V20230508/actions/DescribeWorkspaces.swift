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

extension Cloudstudio {
    /// DescribeWorkspaces请求参数结构体
    public struct DescribeWorkspacesRequest: TCRequest {
        /// 工作空间名称过滤条件
        public let name: String?

        public init(name: String? = nil) {
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// DescribeWorkspaces返回参数结构体
    public struct DescribeWorkspacesResponse: TCResponse {
        /// 工作空间列表
        public let data: [WorkspaceStatusInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取用户工作空间列表
    @inlinable
    public func describeWorkspaces(_ input: DescribeWorkspacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspacesResponse> {
        self.client.execute(action: "DescribeWorkspaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户工作空间列表
    @inlinable
    public func describeWorkspaces(_ input: DescribeWorkspacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspacesResponse {
        try await self.client.execute(action: "DescribeWorkspaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户工作空间列表
    @inlinable
    public func describeWorkspaces(name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspacesResponse> {
        self.describeWorkspaces(.init(name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户工作空间列表
    @inlinable
    public func describeWorkspaces(name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspacesResponse {
        try await self.describeWorkspaces(.init(name: name), region: region, logger: logger, on: eventLoop)
    }
}
