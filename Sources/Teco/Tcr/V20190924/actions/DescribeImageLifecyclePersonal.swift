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

extension Tcr {
    /// DescribeImageLifecyclePersonal请求参数结构体
    public struct DescribeImageLifecyclePersonalRequest: TCRequest {
        /// 仓库名称
        public let repoName: String

        public init(repoName: String) {
            self.repoName = repoName
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
        }
    }

    /// DescribeImageLifecyclePersonal返回参数结构体
    public struct DescribeImageLifecyclePersonalResponse: TCResponse {
        /// 自动删除策略信息
        public let data: AutoDelStrategyInfoResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取个人版仓库自动清理策略
    ///
    /// 用于获取个人版仓库中自动清理策略
    @inlinable
    public func describeImageLifecyclePersonal(_ input: DescribeImageLifecyclePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageLifecyclePersonalResponse> {
        self.client.execute(action: "DescribeImageLifecyclePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取个人版仓库自动清理策略
    ///
    /// 用于获取个人版仓库中自动清理策略
    @inlinable
    public func describeImageLifecyclePersonal(_ input: DescribeImageLifecyclePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageLifecyclePersonalResponse {
        try await self.client.execute(action: "DescribeImageLifecyclePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取个人版仓库自动清理策略
    ///
    /// 用于获取个人版仓库中自动清理策略
    @inlinable
    public func describeImageLifecyclePersonal(repoName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageLifecyclePersonalResponse> {
        self.describeImageLifecyclePersonal(.init(repoName: repoName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取个人版仓库自动清理策略
    ///
    /// 用于获取个人版仓库中自动清理策略
    @inlinable
    public func describeImageLifecyclePersonal(repoName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageLifecyclePersonalResponse {
        try await self.describeImageLifecyclePersonal(.init(repoName: repoName), region: region, logger: logger, on: eventLoop)
    }
}
