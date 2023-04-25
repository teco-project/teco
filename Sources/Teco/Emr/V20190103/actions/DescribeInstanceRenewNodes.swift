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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Emr {
    /// DescribeInstanceRenewNodes请求参数结构体
    public struct DescribeInstanceRenewNodesRequest: TCRequestModel {
        /// 集群实例ID,实例ID形如: emr-xxxxxxxx
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceRenewNodes返回参数结构体
    public struct DescribeInstanceRenewNodesResponse: TCResponseModel {
        /// 查询到的节点总数
        public let totalCnt: Int64

        /// 节点详细信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeList: [RenewInstancesInfo]?

        /// 用户所有的标签键列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metaInfo: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCnt = "TotalCnt"
            case nodeList = "NodeList"
            case metaInfo = "MetaInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询待续费节点信息
    @inlinable
    public func describeInstanceRenewNodes(_ input: DescribeInstanceRenewNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceRenewNodesResponse> {
        self.client.execute(action: "DescribeInstanceRenewNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询待续费节点信息
    @inlinable
    public func describeInstanceRenewNodes(_ input: DescribeInstanceRenewNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceRenewNodesResponse {
        try await self.client.execute(action: "DescribeInstanceRenewNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询待续费节点信息
    @inlinable
    public func describeInstanceRenewNodes(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceRenewNodesResponse> {
        self.describeInstanceRenewNodes(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询待续费节点信息
    @inlinable
    public func describeInstanceRenewNodes(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceRenewNodesResponse {
        try await self.describeInstanceRenewNodes(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
