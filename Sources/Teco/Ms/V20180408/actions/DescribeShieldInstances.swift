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

extension Ms {
    /// DescribeShieldInstances请求参数结构体
    public struct DescribeShieldInstancesRequest: TCPaginatedRequest {
        /// 支持通过app名称，app包名，加固的服务版本，提交的渠道进行筛选。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 数量限制，默认为20，最大值为100。
        public let limit: UInt64?

        /// 可以提供ItemId数组来查询一个或者多个结果。注意不可以同时指定ItemIds和Filters。
        public let itemIds: [String]?

        /// 按某个字段排序，目前仅支持TaskTime排序。
        public let orderField: String?

        /// 升序（asc）还是降序（desc），默认：desc。
        public let orderDirection: String?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, itemIds: [String]? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.itemIds = itemIds
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case itemIds = "ItemIds"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeShieldInstancesResponse) -> DescribeShieldInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeShieldInstancesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, itemIds: self.itemIds, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeShieldInstances返回参数结构体
    public struct DescribeShieldInstancesResponse: TCPaginatedResponse {
        /// 符合要求的app数量
        public let totalCount: UInt64

        /// 一个关于app详细信息的结构体，主要包括app的基本信息和加固信息。
        public let appSet: [AppSetInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case appSet = "AppSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AppSetInfo] {
            self.appSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstances(_ input: DescribeShieldInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShieldInstancesResponse> {
        self.client.execute(action: "DescribeShieldInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstances(_ input: DescribeShieldInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShieldInstancesResponse {
        try await self.client.execute(action: "DescribeShieldInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, itemIds: [String]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShieldInstancesResponse> {
        let input = DescribeShieldInstancesRequest(filters: filters, offset: offset, limit: limit, itemIds: itemIds, orderField: orderField, orderDirection: orderDirection)
        return self.client.execute(action: "DescribeShieldInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, itemIds: [String]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShieldInstancesResponse {
        let input = DescribeShieldInstancesRequest(filters: filters, offset: offset, limit: limit, itemIds: itemIds, orderField: orderField, orderDirection: orderDirection)
        return try await self.client.execute(action: "DescribeShieldInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstancesPaginated(_ input: DescribeShieldInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AppSetInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeShieldInstances, logger: logger, on: eventLoop)
    }

    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstancesPaginated(_ input: DescribeShieldInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeShieldInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeShieldInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstancesPaginator(_ input: DescribeShieldInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeShieldInstancesRequest, DescribeShieldInstancesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeShieldInstancesRequest, DescribeShieldInstancesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeShieldInstancesRequest, DescribeShieldInstancesResponse>.ResultSequence(input: input, region: region, command: self.describeShieldInstances, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeShieldInstancesRequest, DescribeShieldInstancesResponse>.ResponseSequence(input: input, region: region, command: self.describeShieldInstances, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
