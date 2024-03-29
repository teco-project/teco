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

extension Tione {
    /// DescribeTrainingFrameworks请求参数结构体
    public struct DescribeTrainingFrameworksRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeTrainingFrameworks返回参数结构体
    public struct DescribeTrainingFrameworksResponse: TCResponse {
        /// 框架信息列表
        public let frameworkInfos: [FrameworkInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case frameworkInfos = "FrameworkInfos"
            case requestId = "RequestId"
        }
    }

    /// 训练框架列表
    @inlinable
    public func describeTrainingFrameworks(_ input: DescribeTrainingFrameworksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingFrameworksResponse> {
        self.client.execute(action: "DescribeTrainingFrameworks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 训练框架列表
    @inlinable
    public func describeTrainingFrameworks(_ input: DescribeTrainingFrameworksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingFrameworksResponse {
        try await self.client.execute(action: "DescribeTrainingFrameworks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 训练框架列表
    @inlinable
    public func describeTrainingFrameworks(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingFrameworksResponse> {
        self.describeTrainingFrameworks(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 训练框架列表
    @inlinable
    public func describeTrainingFrameworks(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingFrameworksResponse {
        try await self.describeTrainingFrameworks(.init(), region: region, logger: logger, on: eventLoop)
    }
}
