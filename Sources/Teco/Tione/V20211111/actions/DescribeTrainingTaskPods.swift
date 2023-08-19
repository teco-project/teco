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
    /// DescribeTrainingTaskPods请求参数结构体
    public struct DescribeTrainingTaskPodsRequest: TCRequest {
        /// 训练任务ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeTrainingTaskPods返回参数结构体
    public struct DescribeTrainingTaskPodsResponse: TCResponse {
        /// pod名称列表
        public let podNames: [String]

        /// 数量
        public let totalCount: UInt64

        /// pod详细信息
        public let podInfoList: PodInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case podNames = "PodNames"
            case totalCount = "TotalCount"
            case podInfoList = "PodInfoList"
            case requestId = "RequestId"
        }
    }

    /// 训练任务pod列表
    @inlinable
    public func describeTrainingTaskPods(_ input: DescribeTrainingTaskPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingTaskPodsResponse> {
        self.client.execute(action: "DescribeTrainingTaskPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 训练任务pod列表
    @inlinable
    public func describeTrainingTaskPods(_ input: DescribeTrainingTaskPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingTaskPodsResponse {
        try await self.client.execute(action: "DescribeTrainingTaskPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 训练任务pod列表
    @inlinable
    public func describeTrainingTaskPods(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingTaskPodsResponse> {
        self.describeTrainingTaskPods(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 训练任务pod列表
    @inlinable
    public func describeTrainingTaskPods(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingTaskPodsResponse {
        try await self.describeTrainingTaskPods(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
