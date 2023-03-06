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

import TecoPaginationHelpers

extension Lighthouse {
    /// DescribeInstancesTrafficPackages请求参数结构体
    public struct DescribeInstancesTrafficPackagesRequest: TCPaginatedRequest {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceIds: [String]?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstancesTrafficPackagesResponse) -> DescribeInstancesTrafficPackagesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesTrafficPackagesRequest(instanceIds: self.instanceIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeInstancesTrafficPackages返回参数结构体
    public struct DescribeInstancesTrafficPackagesResponse: TCPaginatedResponse {
        /// 符合条件的实例流量包详情数量。
        public let totalCount: Int64

        /// 实例流量包详情列表。
        public let instanceTrafficPackageSet: [InstanceTrafficPackage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceTrafficPackageSet = "InstanceTrafficPackageSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceTrafficPackage] {
            self.instanceTrafficPackageSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(_ input: DescribeInstancesTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesTrafficPackagesResponse> {
        self.client.execute(action: "DescribeInstancesTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(_ input: DescribeInstancesTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesTrafficPackagesResponse {
        try await self.client.execute(action: "DescribeInstancesTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesTrafficPackagesResponse> {
        let input = DescribeInstancesTrafficPackagesRequest(instanceIds: instanceIds, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeInstancesTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackages(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesTrafficPackagesResponse {
        let input = DescribeInstancesTrafficPackagesRequest(instanceIds: instanceIds, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeInstancesTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackagesPaginated(_ input: DescribeInstancesTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceTrafficPackage])> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesTrafficPackages, logger: logger, on: eventLoop)
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackagesPaginated(_ input: DescribeInstancesTrafficPackagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesTrafficPackagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesTrafficPackages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看实例流量包详情
    ///
    /// 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。
    @inlinable
    public func describeInstancesTrafficPackagesPaginator(_ input: DescribeInstancesTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeInstancesTrafficPackagesRequest, DescribeInstancesTrafficPackagesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeInstancesTrafficPackagesRequest, DescribeInstancesTrafficPackagesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeInstancesTrafficPackagesRequest, DescribeInstancesTrafficPackagesResponse>.ResultSequence(input: input, region: region, command: self.describeInstancesTrafficPackages, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeInstancesTrafficPackagesRequest, DescribeInstancesTrafficPackagesResponse>.ResponseSequence(input: input, region: region, command: self.describeInstancesTrafficPackages, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
