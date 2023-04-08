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

import TecoCore
import TecoPaginationHelpers

extension Mongodb {
    /// DescribeCurrentOp请求参数结构体
    public struct DescribeCurrentOpRequest: TCPaginatedRequest {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        /// 筛选条件，操作所属的命名空间namespace，格式为db.collection
        public let ns: String?

        /// 筛选条件，操作已经执行的时间（单位：毫秒），结果将返回超过设置时间的操作，默认值为0，取值范围为[0, 3600000]
        public let millisecondRunning: UInt64?

        /// 筛选条件，操作类型，可能的取值：none，update，insert，query，command，getmore，remove和killcursors
        public let op: String?

        /// 筛选条件，分片名称
        public let replicaSetName: String?

        /// 筛选条件，节点状态，可能的取值为：primary
        /// secondary
        public let state: String?

        /// 单次请求返回的数量，默认值为100，取值范围为[0,100]
        public let limit: UInt64?

        /// 偏移量，默认值为0，取值范围为[0,10000]
        public let offset: UInt64?

        /// 返回结果集排序的字段，目前支持："MicrosecsRunning"/"microsecsrunning"，默认为升序排序
        public let orderBy: String?

        /// 返回结果集排序方式，可能的取值："ASC"/"asc"或"DESC"/"desc"
        public let orderByType: String?

        public init(instanceId: String, ns: String? = nil, millisecondRunning: UInt64? = nil, op: String? = nil, replicaSetName: String? = nil, state: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.instanceId = instanceId
            self.ns = ns
            self.millisecondRunning = millisecondRunning
            self.op = op
            self.replicaSetName = replicaSetName
            self.state = state
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ns = "Ns"
            case millisecondRunning = "MillisecondRunning"
            case op = "Op"
            case replicaSetName = "ReplicaSetName"
            case state = "State"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCurrentOpResponse) -> DescribeCurrentOpRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCurrentOpRequest(instanceId: self.instanceId, ns: self.ns, millisecondRunning: self.millisecondRunning, op: self.op, replicaSetName: self.replicaSetName, state: self.state, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeCurrentOp返回参数结构体
    public struct DescribeCurrentOpResponse: TCPaginatedResponse {
        /// 符合查询条件的操作总数
        public let totalCount: UInt64

        /// 当前操作列表
        public let currentOps: [CurrentOp]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case currentOps = "CurrentOps"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CurrentOp] {
            self.currentOps
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询数据库实例当前正在执行的操作
    ///
    /// 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。
    @inlinable
    public func describeCurrentOp(_ input: DescribeCurrentOpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurrentOpResponse> {
        self.client.execute(action: "DescribeCurrentOp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库实例当前正在执行的操作
    ///
    /// 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。
    @inlinable
    public func describeCurrentOp(_ input: DescribeCurrentOpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurrentOpResponse {
        try await self.client.execute(action: "DescribeCurrentOp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库实例当前正在执行的操作
    ///
    /// 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。
    @inlinable
    public func describeCurrentOp(instanceId: String, ns: String? = nil, millisecondRunning: UInt64? = nil, op: String? = nil, replicaSetName: String? = nil, state: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurrentOpResponse> {
        self.describeCurrentOp(.init(instanceId: instanceId, ns: ns, millisecondRunning: millisecondRunning, op: op, replicaSetName: replicaSetName, state: state, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库实例当前正在执行的操作
    ///
    /// 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。
    @inlinable
    public func describeCurrentOp(instanceId: String, ns: String? = nil, millisecondRunning: UInt64? = nil, op: String? = nil, replicaSetName: String? = nil, state: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurrentOpResponse {
        try await self.describeCurrentOp(.init(instanceId: instanceId, ns: ns, millisecondRunning: millisecondRunning, op: op, replicaSetName: replicaSetName, state: state, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库实例当前正在执行的操作
    ///
    /// 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。
    @inlinable
    public func describeCurrentOpPaginated(_ input: DescribeCurrentOpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CurrentOp])> {
        self.client.paginate(input: input, region: region, command: self.describeCurrentOp, logger: logger, on: eventLoop)
    }

    /// 查询数据库实例当前正在执行的操作
    ///
    /// 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。
    @inlinable @discardableResult
    public func describeCurrentOpPaginated(_ input: DescribeCurrentOpRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCurrentOpResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCurrentOp, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据库实例当前正在执行的操作
    ///
    /// 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。
    ///
    /// - Returns: `AsyncSequence`s of `CurrentOp` and `DescribeCurrentOpResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCurrentOpPaginator(_ input: DescribeCurrentOpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCurrentOpRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCurrentOp, logger: logger, on: eventLoop)
    }
}
