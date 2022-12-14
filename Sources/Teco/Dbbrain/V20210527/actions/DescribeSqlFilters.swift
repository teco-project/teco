//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dbbrain {
    /// DescribeSqlFilters请求参数结构体
    public struct DescribeSqlFiltersRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 任务ID列表，用于筛选任务列表。
        public let filterIds: [Int64]?

        /// 任务状态列表，用于筛选任务列表，取值包括RUNNING - 运行中, FINISHED - 已完成, TERMINATED - 已终止。
        public let statuses: [String]?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        public init(instanceId: String, filterIds: [Int64]? = nil, statuses: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.filterIds = filterIds
            self.statuses = statuses
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case filterIds = "FilterIds"
            case statuses = "Statuses"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSqlFilters返回参数结构体
    public struct DescribeSqlFiltersResponse: TCResponseModel {
        /// 限流任务总数目。
        public let totalCount: Int64

        /// 限流任务列表。
        public let items: [SQLFilter]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(_ input: DescribeSqlFiltersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSqlFiltersResponse > {
        self.client.execute(action: "DescribeSqlFilters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(_ input: DescribeSqlFiltersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSqlFiltersResponse {
        try await self.client.execute(action: "DescribeSqlFilters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(instanceId: String, filterIds: [Int64]? = nil, statuses: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSqlFiltersResponse > {
        self.describeSqlFilters(DescribeSqlFiltersRequest(instanceId: instanceId, filterIds: filterIds, statuses: statuses, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(instanceId: String, filterIds: [Int64]? = nil, statuses: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSqlFiltersResponse {
        try await self.describeSqlFilters(DescribeSqlFiltersRequest(instanceId: instanceId, filterIds: filterIds, statuses: statuses, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
