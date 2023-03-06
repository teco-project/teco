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

extension Rum {
    /// DescribeTawInstances请求参数结构体
    public struct DescribeTawInstancesRequest: TCPaginatedRequest {
        /// 计费状态
        public let chargeStatuses: [Int64]?

        /// 计费类型
        public let chargeTypes: [Int64]?

        /// 分页Limit
        public let limit: Int64?

        /// 分页Offset
        public let offset: Int64?

        /// 片区Id
        public let areaIds: [Int64]?

        /// 实例状态(1=创建中，2=运行中，3=异常，4=重启中，5=停止中，6=已停止，7=销毁中，8=已销毁), 该参数已废弃，请在Filters内注明
        public let instanceStatuses: [Int64]?

        /// 实例Id, 该参数已废弃，请在Filters内注明
        public let instanceIds: [String]?

        /// 过滤参数；demo模式传{"Name": "IsDemo", "Values":["1"]}
        public let filters: [Filter]?

        /// 该参数已废弃，demo模式请在Filters内注明
        public let isDemo: Int64?

        public init(chargeStatuses: [Int64]? = nil, chargeTypes: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, areaIds: [Int64]? = nil, instanceStatuses: [Int64]? = nil, instanceIds: [String]? = nil, filters: [Filter]? = nil, isDemo: Int64? = nil) {
            self.chargeStatuses = chargeStatuses
            self.chargeTypes = chargeTypes
            self.limit = limit
            self.offset = offset
            self.areaIds = areaIds
            self.instanceStatuses = instanceStatuses
            self.instanceIds = instanceIds
            self.filters = filters
            self.isDemo = isDemo
        }

        enum CodingKeys: String, CodingKey {
            case chargeStatuses = "ChargeStatuses"
            case chargeTypes = "ChargeTypes"
            case limit = "Limit"
            case offset = "Offset"
            case areaIds = "AreaIds"
            case instanceStatuses = "InstanceStatuses"
            case instanceIds = "InstanceIds"
            case filters = "Filters"
            case isDemo = "IsDemo"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTawInstancesResponse) -> DescribeTawInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTawInstancesRequest(chargeStatuses: self.chargeStatuses, chargeTypes: self.chargeTypes, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), areaIds: self.areaIds, instanceStatuses: self.instanceStatuses, instanceIds: self.instanceIds, filters: self.filters, isDemo: self.isDemo)
        }
    }

    /// DescribeTawInstances返回参数结构体
    public struct DescribeTawInstancesResponse: TCPaginatedResponse {
        /// 实例列表
        public let instanceSet: [RumInstanceInfo]

        /// 实例总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RumInstanceInfo] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询 RUM 业务系统信息
    ///
    /// 查询实例信息
    @inlinable
    public func describeTawInstances(_ input: DescribeTawInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTawInstancesResponse> {
        self.client.execute(action: "DescribeTawInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 RUM 业务系统信息
    ///
    /// 查询实例信息
    @inlinable
    public func describeTawInstances(_ input: DescribeTawInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTawInstancesResponse {
        try await self.client.execute(action: "DescribeTawInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 RUM 业务系统信息
    ///
    /// 查询实例信息
    @inlinable
    public func describeTawInstances(chargeStatuses: [Int64]? = nil, chargeTypes: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, areaIds: [Int64]? = nil, instanceStatuses: [Int64]? = nil, instanceIds: [String]? = nil, filters: [Filter]? = nil, isDemo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTawInstancesResponse> {
        let input = DescribeTawInstancesRequest(chargeStatuses: chargeStatuses, chargeTypes: chargeTypes, limit: limit, offset: offset, areaIds: areaIds, instanceStatuses: instanceStatuses, instanceIds: instanceIds, filters: filters, isDemo: isDemo)
        return self.client.execute(action: "DescribeTawInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 RUM 业务系统信息
    ///
    /// 查询实例信息
    @inlinable
    public func describeTawInstances(chargeStatuses: [Int64]? = nil, chargeTypes: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, areaIds: [Int64]? = nil, instanceStatuses: [Int64]? = nil, instanceIds: [String]? = nil, filters: [Filter]? = nil, isDemo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTawInstancesResponse {
        let input = DescribeTawInstancesRequest(chargeStatuses: chargeStatuses, chargeTypes: chargeTypes, limit: limit, offset: offset, areaIds: areaIds, instanceStatuses: instanceStatuses, instanceIds: instanceIds, filters: filters, isDemo: isDemo)
        return try await self.client.execute(action: "DescribeTawInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 RUM 业务系统信息
    ///
    /// 查询实例信息
    @inlinable
    public func describeTawInstancesPaginated(_ input: DescribeTawInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RumInstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTawInstances, logger: logger, on: eventLoop)
    }

    /// 查询 RUM 业务系统信息
    ///
    /// 查询实例信息
    @inlinable
    public func describeTawInstancesPaginated(_ input: DescribeTawInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTawInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTawInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询 RUM 业务系统信息
    ///
    /// 查询实例信息
    @inlinable
    public func describeTawInstancesPaginator(_ input: DescribeTawInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTawInstancesRequest, DescribeTawInstancesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTawInstancesRequest, DescribeTawInstancesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeTawInstancesRequest, DescribeTawInstancesResponse>.ResultSequence(input: input, region: region, command: self.describeTawInstances, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeTawInstancesRequest, DescribeTawInstancesResponse>.ResponseSequence(input: input, region: region, command: self.describeTawInstances, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
