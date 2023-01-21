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

extension Cvm {
    /// DescribeHpcClusters请求参数结构体
    public struct DescribeHpcClustersRequest: TCRequestModel {
        /// 高性能计算集群ID数组。
        public let hpcClusterIds: [String]?

        /// 高性能计算集群名称。
        public let name: String?

        /// 可用区。
        public let zone: String?

        /// 偏移量, 默认值0。
        public let offset: UInt64?

        /// 本次请求量, 默认值20。
        public let limit: UInt64?

        public init(hpcClusterIds: [String]? = nil, name: String? = nil, zone: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.hpcClusterIds = hpcClusterIds
            self.name = name
            self.zone = zone
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case hpcClusterIds = "HpcClusterIds"
            case name = "Name"
            case zone = "Zone"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeHpcClusters返回参数结构体
    public struct DescribeHpcClustersResponse: TCResponseModel {
        /// 高性能计算集群信息。
        public let hpcClusterSet: [HpcClusterInfo]

        /// 高性能计算集群总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hpcClusterSet = "HpcClusterSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(_ input: DescribeHpcClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHpcClustersResponse> {
        self.client.execute(action: "DescribeHpcClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(_ input: DescribeHpcClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHpcClustersResponse {
        try await self.client.execute(action: "DescribeHpcClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(hpcClusterIds: [String]? = nil, name: String? = nil, zone: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHpcClustersResponse> {
        self.describeHpcClusters(DescribeHpcClustersRequest(hpcClusterIds: hpcClusterIds, name: name, zone: zone, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(hpcClusterIds: [String]? = nil, name: String? = nil, zone: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHpcClustersResponse {
        try await self.describeHpcClusters(DescribeHpcClustersRequest(hpcClusterIds: hpcClusterIds, name: name, zone: zone, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
