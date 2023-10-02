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

extension Ckafka {
    /// DescribeInstancesDetail请求参数结构体
    public struct DescribeInstancesDetailRequest: TCPaginatedRequest {
        /// （过滤条件）按照实例ID过滤
        public let instanceId: String?

        /// （过滤条件）按照实例名,实例Id,可用区,私有网络id,子网id 过滤，支持模糊查询
        public let searchWord: String?

        /// （过滤条件）实例的状态。0：创建中，1：运行中，2：删除中，不填默认返回全部
        public let status: [Int64]?

        /// 偏移量，不填默认为0。
        public let offset: Int64?

        /// 返回数量，不填则默认10，最大值20。
        public let limit: Int64?

        /// 匹配标签key值。
        public let tagKey: String?

        /// 过滤器。filter.Name 支持('Ip', 'VpcId', 'SubNetId', 'InstanceType','InstanceId') ,filter.Values最多传递10个值.
        public let filters: [Filter]?

        /// 已经废弃， 使用InstanceIdList
        public let instanceIds: String?

        /// 按照实例ID过滤
        public let instanceIdList: [String]?

        /// 根据标签列表过滤实例（取交集）
        public let tagList: [Tag]?

        public init(instanceId: String? = nil, searchWord: String? = nil, status: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, tagKey: String? = nil, filters: [Filter]? = nil, instanceIds: String? = nil, instanceIdList: [String]? = nil, tagList: [Tag]? = nil) {
            self.instanceId = instanceId
            self.searchWord = searchWord
            self.status = status
            self.offset = offset
            self.limit = limit
            self.tagKey = tagKey
            self.filters = filters
            self.instanceIds = instanceIds
            self.instanceIdList = instanceIdList
            self.tagList = tagList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case searchWord = "SearchWord"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
            case tagKey = "TagKey"
            case filters = "Filters"
            case instanceIds = "InstanceIds"
            case instanceIdList = "InstanceIdList"
            case tagList = "TagList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesDetailResponse) -> DescribeInstancesDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, searchWord: self.searchWord, status: self.status, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, tagKey: self.tagKey, filters: self.filters, instanceIds: self.instanceIds, instanceIdList: self.instanceIdList, tagList: self.tagList)
        }
    }

    /// DescribeInstancesDetail返回参数结构体
    public struct DescribeInstancesDetailResponse: TCPaginatedResponse {
        /// 返回的实例详情结果对象
        public let result: InstanceDetailResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceDetail`` list from the paginated response.
        public func getItems() -> [InstanceDetail] {
            self.result.instanceList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取实例列表详情
    ///
    /// 用户账户下获取实例列表详情
    @inlinable
    public func describeInstancesDetail(_ input: DescribeInstancesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesDetailResponse> {
        self.client.execute(action: "DescribeInstancesDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例列表详情
    ///
    /// 用户账户下获取实例列表详情
    @inlinable
    public func describeInstancesDetail(_ input: DescribeInstancesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesDetailResponse {
        try await self.client.execute(action: "DescribeInstancesDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例列表详情
    ///
    /// 用户账户下获取实例列表详情
    @inlinable
    public func describeInstancesDetail(instanceId: String? = nil, searchWord: String? = nil, status: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, tagKey: String? = nil, filters: [Filter]? = nil, instanceIds: String? = nil, instanceIdList: [String]? = nil, tagList: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesDetailResponse> {
        self.describeInstancesDetail(.init(instanceId: instanceId, searchWord: searchWord, status: status, offset: offset, limit: limit, tagKey: tagKey, filters: filters, instanceIds: instanceIds, instanceIdList: instanceIdList, tagList: tagList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例列表详情
    ///
    /// 用户账户下获取实例列表详情
    @inlinable
    public func describeInstancesDetail(instanceId: String? = nil, searchWord: String? = nil, status: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, tagKey: String? = nil, filters: [Filter]? = nil, instanceIds: String? = nil, instanceIdList: [String]? = nil, tagList: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesDetailResponse {
        try await self.describeInstancesDetail(.init(instanceId: instanceId, searchWord: searchWord, status: status, offset: offset, limit: limit, tagKey: tagKey, filters: filters, instanceIds: instanceIds, instanceIdList: instanceIdList, tagList: tagList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例列表详情
    ///
    /// 用户账户下获取实例列表详情
    @inlinable
    public func describeInstancesDetailPaginated(_ input: DescribeInstancesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesDetail, logger: logger, on: eventLoop)
    }

    /// 获取实例列表详情
    ///
    /// 用户账户下获取实例列表详情
    @inlinable @discardableResult
    public func describeInstancesDetailPaginated(_ input: DescribeInstancesDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取实例列表详情
    ///
    /// 用户账户下获取实例列表详情
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceDetail`` and ``DescribeInstancesDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesDetailPaginator(_ input: DescribeInstancesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstancesDetail, logger: logger, on: eventLoop)
    }
}
