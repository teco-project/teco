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
    /// ListClusterInspectionResults请求参数结构体
    public struct ListClusterInspectionResultsRequest: TCRequest {
        /// 目标集群列表，为空查询用户所有集群
        public let clusterIds: [String]?

        /// 隐藏的字段信息，为了减少无效的字段返回，隐藏字段不会在返回值中返回。可选值：results
        public let hide: [String]?

        /// 指定查询结果的报告名称，默认查询最新的每个集群只查询最新的一条
        public let name: String?

        public init(clusterIds: [String]? = nil, hide: [String]? = nil, name: String? = nil) {
            self.clusterIds = clusterIds
            self.hide = hide
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case hide = "Hide"
            case name = "Name"
        }
    }

    /// ListClusterInspectionResults返回参数结构体
    public struct ListClusterInspectionResultsResponse: TCResponse {
        /// 集群诊断结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inspectionResults: [KubeJarvisStateInspectionResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case inspectionResults = "InspectionResults"
            case requestId = "RequestId"
        }
    }

    /// 查询指定集群的巡检结果信息
    @inlinable
    public func listClusterInspectionResults(_ input: ListClusterInspectionResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClusterInspectionResultsResponse> {
        self.client.execute(action: "ListClusterInspectionResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定集群的巡检结果信息
    @inlinable
    public func listClusterInspectionResults(_ input: ListClusterInspectionResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClusterInspectionResultsResponse {
        try await self.client.execute(action: "ListClusterInspectionResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定集群的巡检结果信息
    @inlinable
    public func listClusterInspectionResults(clusterIds: [String]? = nil, hide: [String]? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClusterInspectionResultsResponse> {
        self.listClusterInspectionResults(.init(clusterIds: clusterIds, hide: hide, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定集群的巡检结果信息
    @inlinable
    public func listClusterInspectionResults(clusterIds: [String]? = nil, hide: [String]? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClusterInspectionResultsResponse {
        try await self.listClusterInspectionResults(.init(clusterIds: clusterIds, hide: hide, name: name), region: region, logger: logger, on: eventLoop)
    }
}
