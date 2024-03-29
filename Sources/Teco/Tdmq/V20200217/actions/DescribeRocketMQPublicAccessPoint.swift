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

extension Tdmq {
    /// DescribeRocketMQPublicAccessPoint请求参数结构体
    public struct DescribeRocketMQPublicAccessPointRequest: TCRequest {
        /// 集群ID，当前只支持专享集群
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeRocketMQPublicAccessPoint返回参数结构体
    public struct DescribeRocketMQPublicAccessPointResponse: TCResponse {
        /// 公网接入点状态：
        /// 0， 已开启
        /// 1， 已关闭
        /// 2，开启中
        /// 3，关闭中
        /// 4，修改中
        public let status: Int64

        /// 支付状态：
        /// 0, 未知
        /// 1，正常
        /// 2，欠费
        public let payStatus: Int64

        /// 接入点地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessUrl: String?

        /// 安全访问规则列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rules: [PublicAccessRule]?

        /// 带宽
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bandwidth: Int64?

        /// 付费模式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payMode: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case payStatus = "PayStatus"
            case accessUrl = "AccessUrl"
            case rules = "Rules"
            case bandwidth = "Bandwidth"
            case payMode = "PayMode"
            case requestId = "RequestId"
        }
    }

    /// 查询RocketMQ实例公网接入点信息
    ///
    /// 接口用于查询RocketMQ实例的公网接入信息
    @inlinable
    public func describeRocketMQPublicAccessPoint(_ input: DescribeRocketMQPublicAccessPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQPublicAccessPointResponse> {
        self.client.execute(action: "DescribeRocketMQPublicAccessPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询RocketMQ实例公网接入点信息
    ///
    /// 接口用于查询RocketMQ实例的公网接入信息
    @inlinable
    public func describeRocketMQPublicAccessPoint(_ input: DescribeRocketMQPublicAccessPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQPublicAccessPointResponse {
        try await self.client.execute(action: "DescribeRocketMQPublicAccessPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询RocketMQ实例公网接入点信息
    ///
    /// 接口用于查询RocketMQ实例的公网接入信息
    @inlinable
    public func describeRocketMQPublicAccessPoint(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQPublicAccessPointResponse> {
        self.describeRocketMQPublicAccessPoint(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询RocketMQ实例公网接入点信息
    ///
    /// 接口用于查询RocketMQ实例的公网接入信息
    @inlinable
    public func describeRocketMQPublicAccessPoint(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQPublicAccessPointResponse {
        try await self.describeRocketMQPublicAccessPoint(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
