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

extension Tke {
    /// DescribeClusterReleases请求参数结构体
    public struct DescribeClusterReleasesRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        /// 每页数量限制
        public let limit: Int64?

        /// 页偏移量
        public let offset: Int64?

        /// helm Release 安装的namespace
        public let namespace: String?

        /// helm Release 的名字
        public let releaseName: String?

        /// helm Chart 的名字
        public let chartName: String?

        public init(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, namespace: String? = nil, releaseName: String? = nil, chartName: String? = nil) {
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
            self.namespace = namespace
            self.releaseName = releaseName
            self.chartName = chartName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
            case namespace = "Namespace"
            case releaseName = "ReleaseName"
            case chartName = "ChartName"
        }
    }

    /// DescribeClusterReleases返回参数结构体
    public struct DescribeClusterReleasesResponse: TCResponseModel {
        /// 数量限制
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let limit: Int64?

        /// 偏移量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: Int64?

        /// 已安装应用列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let releaseSet: [Release]?

        /// 已安装应用总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case releaseSet = "ReleaseSet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询集群已安装应用列表
    ///
    /// 查询集群在应用市场中已安装应用列表
    @inlinable
    public func describeClusterReleases(_ input: DescribeClusterReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterReleasesResponse> {
        self.client.execute(action: "DescribeClusterReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群已安装应用列表
    ///
    /// 查询集群在应用市场中已安装应用列表
    @inlinable
    public func describeClusterReleases(_ input: DescribeClusterReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterReleasesResponse {
        try await self.client.execute(action: "DescribeClusterReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群已安装应用列表
    ///
    /// 查询集群在应用市场中已安装应用列表
    @inlinable
    public func describeClusterReleases(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, namespace: String? = nil, releaseName: String? = nil, chartName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterReleasesResponse> {
        let input = DescribeClusterReleasesRequest(clusterId: clusterId, limit: limit, offset: offset, namespace: namespace, releaseName: releaseName, chartName: chartName)
        return self.client.execute(action: "DescribeClusterReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群已安装应用列表
    ///
    /// 查询集群在应用市场中已安装应用列表
    @inlinable
    public func describeClusterReleases(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, namespace: String? = nil, releaseName: String? = nil, chartName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterReleasesResponse {
        let input = DescribeClusterReleasesRequest(clusterId: clusterId, limit: limit, offset: offset, namespace: namespace, releaseName: releaseName, chartName: chartName)
        return try await self.client.execute(action: "DescribeClusterReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
