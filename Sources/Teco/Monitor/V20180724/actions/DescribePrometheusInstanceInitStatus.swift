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
    /// DescribePrometheusInstanceInitStatus请求参数结构体
    public struct DescribePrometheusInstanceInitStatusRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribePrometheusInstanceInitStatus返回参数结构体
    public struct DescribePrometheusInstanceInitStatusResponse: TCResponse {
        /// 实例初始化状态，取值：
        /// uninitialized 未初始化
        /// initializing 初始化中
        /// running 初始化完成，运行中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 初始化任务步骤
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let steps: [TaskStepInfo]?

        /// 实例eks集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eksClusterId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case steps = "Steps"
            case eksClusterId = "EksClusterId"
            case requestId = "RequestId"
        }
    }

    /// 获取2.0实例初始化任务状态
    @inlinable
    public func describePrometheusInstanceInitStatus(_ input: DescribePrometheusInstanceInitStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceInitStatusResponse> {
        self.client.execute(action: "DescribePrometheusInstanceInitStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例初始化任务状态
    @inlinable
    public func describePrometheusInstanceInitStatus(_ input: DescribePrometheusInstanceInitStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceInitStatusResponse {
        try await self.client.execute(action: "DescribePrometheusInstanceInitStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取2.0实例初始化任务状态
    @inlinable
    public func describePrometheusInstanceInitStatus(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceInitStatusResponse> {
        self.describePrometheusInstanceInitStatus(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例初始化任务状态
    @inlinable
    public func describePrometheusInstanceInitStatus(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceInitStatusResponse {
        try await self.describePrometheusInstanceInitStatus(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
