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

extension Iecp {
    /// DescribeEdgeUnitApplicationPods请求参数结构体
    public struct DescribeEdgeUnitApplicationPodsRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitId: UInt64

        /// 应用ID
        public let applicationId: Int64

        public init(edgeUnitId: UInt64, applicationId: Int64) {
            self.edgeUnitId = edgeUnitId
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case applicationId = "ApplicationId"
        }
    }

    /// DescribeEdgeUnitApplicationPods返回参数结构体
    public struct DescribeEdgeUnitApplicationPodsResponse: TCResponseModel {
        /// Pod列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podSet: [PodStatus]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case podSet = "PodSet"
            case requestId = "RequestId"
        }
    }

    /// 获取应用下Pod状态
    @inlinable
    public func describeEdgeUnitApplicationPods(_ input: DescribeEdgeUnitApplicationPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitApplicationPodsResponse> {
        self.client.execute(action: "DescribeEdgeUnitApplicationPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用下Pod状态
    @inlinable
    public func describeEdgeUnitApplicationPods(_ input: DescribeEdgeUnitApplicationPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationPodsResponse {
        try await self.client.execute(action: "DescribeEdgeUnitApplicationPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用下Pod状态
    @inlinable
    public func describeEdgeUnitApplicationPods(edgeUnitId: UInt64, applicationId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitApplicationPodsResponse> {
        self.describeEdgeUnitApplicationPods(.init(edgeUnitId: edgeUnitId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用下Pod状态
    @inlinable
    public func describeEdgeUnitApplicationPods(edgeUnitId: UInt64, applicationId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationPodsResponse {
        try await self.describeEdgeUnitApplicationPods(.init(edgeUnitId: edgeUnitId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }
}
