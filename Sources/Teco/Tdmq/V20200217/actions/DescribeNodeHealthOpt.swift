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

extension Tdmq {
    /// DescribeNodeHealthOpt请求参数结构体
    public struct DescribeNodeHealthOptRequest: TCRequestModel {
        /// 节点实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeNodeHealthOpt返回参数结构体
    public struct DescribeNodeHealthOptResponse: TCResponseModel {
        /// 0-异常；1-正常
        public let nodeState: Int64

        /// 最近一次健康检查的时间
        public let latestHealthCheckTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeState = "NodeState"
            case latestHealthCheckTime = "LatestHealthCheckTime"
            case requestId = "RequestId"
        }
    }

    /// 运营端获节点健康状态
    @inlinable
    public func describeNodeHealthOpt(_ input: DescribeNodeHealthOptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodeHealthOptResponse> {
        self.client.execute(action: "DescribeNodeHealthOpt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运营端获节点健康状态
    @inlinable
    public func describeNodeHealthOpt(_ input: DescribeNodeHealthOptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeHealthOptResponse {
        try await self.client.execute(action: "DescribeNodeHealthOpt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运营端获节点健康状态
    @inlinable
    public func describeNodeHealthOpt(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodeHealthOptResponse> {
        self.describeNodeHealthOpt(DescribeNodeHealthOptRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 运营端获节点健康状态
    @inlinable
    public func describeNodeHealthOpt(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeHealthOptResponse {
        try await self.describeNodeHealthOpt(DescribeNodeHealthOptRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
