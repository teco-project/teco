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

extension Tke {
    /// DescribeAvailableTKEEdgeVersion请求参数结构体
    public struct DescribeAvailableTKEEdgeVersionRequest: TCRequest {
        /// 填写ClusterId获取当前集群各个组件版本和最新版本
        public let clusterId: String?

        public init(clusterId: String? = nil) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeAvailableTKEEdgeVersion返回参数结构体
    public struct DescribeAvailableTKEEdgeVersionResponse: TCResponse {
        /// 版本列表
        public let versions: [String]

        /// 边缘集群最新版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let edgeVersionLatest: String?

        /// 边缘集群当前版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let edgeVersionCurrent: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case versions = "Versions"
            case edgeVersionLatest = "EdgeVersionLatest"
            case edgeVersionCurrent = "EdgeVersionCurrent"
            case requestId = "RequestId"
        }
    }

    /// 边缘计算支持的k8s版本
    ///
    /// 边缘计算支持版本和k8s版本
    @inlinable
    public func describeAvailableTKEEdgeVersion(_ input: DescribeAvailableTKEEdgeVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableTKEEdgeVersionResponse> {
        self.client.execute(action: "DescribeAvailableTKEEdgeVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 边缘计算支持的k8s版本
    ///
    /// 边缘计算支持版本和k8s版本
    @inlinable
    public func describeAvailableTKEEdgeVersion(_ input: DescribeAvailableTKEEdgeVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableTKEEdgeVersionResponse {
        try await self.client.execute(action: "DescribeAvailableTKEEdgeVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 边缘计算支持的k8s版本
    ///
    /// 边缘计算支持版本和k8s版本
    @inlinable
    public func describeAvailableTKEEdgeVersion(clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableTKEEdgeVersionResponse> {
        self.describeAvailableTKEEdgeVersion(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 边缘计算支持的k8s版本
    ///
    /// 边缘计算支持版本和k8s版本
    @inlinable
    public func describeAvailableTKEEdgeVersion(clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableTKEEdgeVersionResponse {
        try await self.describeAvailableTKEEdgeVersion(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
