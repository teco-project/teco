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
    /// DescribeECMInstances请求参数结构体
    public struct DescribeECMInstancesRequest: TCRequestModel {
        /// 集群id
        public let clusterID: String

        /// 过滤条件
        /// 仅支持ecm-id过滤
        public let filters: [Filter]?

        public init(clusterID: String, filters: [Filter]? = nil) {
            self.clusterID = clusterID
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
            case filters = "Filters"
        }
    }

    /// DescribeECMInstances返回参数结构体
    public struct DescribeECMInstancesResponse: TCResponseModel {
        /// 返回的实例相关信息列表的长度
        public let totalCount: Int64

        /// 返回的实例相关信息列表
        public let instanceInfoSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceInfoSet = "InstanceInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取ECM实例相关信息
    @inlinable
    public func describeECMInstances(_ input: DescribeECMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeECMInstancesResponse> {
        self.client.execute(action: "DescribeECMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取ECM实例相关信息
    @inlinable
    public func describeECMInstances(_ input: DescribeECMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeECMInstancesResponse {
        try await self.client.execute(action: "DescribeECMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取ECM实例相关信息
    @inlinable
    public func describeECMInstances(clusterID: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeECMInstancesResponse> {
        self.describeECMInstances(DescribeECMInstancesRequest(clusterID: clusterID, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取ECM实例相关信息
    @inlinable
    public func describeECMInstances(clusterID: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeECMInstancesResponse {
        try await self.describeECMInstances(DescribeECMInstancesRequest(clusterID: clusterID, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
