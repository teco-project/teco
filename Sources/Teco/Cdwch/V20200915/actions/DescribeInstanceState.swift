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

extension Cdwch {
    /// DescribeInstanceState请求参数结构体
    public struct DescribeInstanceStateRequest: TCRequest {
        /// 集群实例名称
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceState返回参数结构体
    public struct DescribeInstanceStateResponse: TCResponse {
        /// 集群状态，例如：Serving
        public let instanceState: String

        /// 集群操作创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowCreateTime: String?

        /// 集群操作名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowName: String?

        /// 集群操作进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowProgress: Float?

        /// 集群状态描述，例如：运行中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceStateDesc: String?

        /// 集群流程错误信息，例如：“创建失败，资源不足”
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceState = "InstanceState"
            case flowCreateTime = "FlowCreateTime"
            case flowName = "FlowName"
            case flowProgress = "FlowProgress"
            case instanceStateDesc = "InstanceStateDesc"
            case flowMsg = "FlowMsg"
            case requestId = "RequestId"
        }
    }

    /// 获取集群实例状态
    ///
    /// 集群详情页中显示集群状态、流程进度等
    @inlinable
    public func describeInstanceState(_ input: DescribeInstanceStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceStateResponse> {
        self.client.execute(action: "DescribeInstanceState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群实例状态
    ///
    /// 集群详情页中显示集群状态、流程进度等
    @inlinable
    public func describeInstanceState(_ input: DescribeInstanceStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceStateResponse {
        try await self.client.execute(action: "DescribeInstanceState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群实例状态
    ///
    /// 集群详情页中显示集群状态、流程进度等
    @inlinable
    public func describeInstanceState(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceStateResponse> {
        self.describeInstanceState(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群实例状态
    ///
    /// 集群详情页中显示集群状态、流程进度等
    @inlinable
    public func describeInstanceState(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceStateResponse {
        try await self.describeInstanceState(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
