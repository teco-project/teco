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

extension Tdmq {
    /// DescribeTopics请求参数结构体
    public struct DescribeTopicsRequest: TCPaginatedRequest {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 主题名模糊匹配。
        public let topicName: String?

        /// 起始下标，不填默认为0。
        public let offset: UInt64?

        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: UInt64?

        /// topic类型描述：
        /// 0：非持久非分区主题类型；
        /// 1：非持久分区主题类型；
        /// 2：持久非分区主题类型；
        /// 3：持久分区主题类型；
        public let topicType: UInt64?

        /// Pulsar 集群的ID
        public let clusterId: String?

        /// * TopicName
        /// 按照主题名字查询，精确查询。
        /// 类型：String
        /// 必选：否
        public let filters: [Filter]?

        /// 创建来源：
        /// 1：用户创建
        /// 2：系统创建
        public let topicCreator: UInt64?

        public init(environmentId: String, topicName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, topicType: UInt64? = nil, clusterId: String? = nil, filters: [Filter]? = nil, topicCreator: UInt64? = nil) {
            self.environmentId = environmentId
            self.topicName = topicName
            self.offset = offset
            self.limit = limit
            self.topicType = topicType
            self.clusterId = clusterId
            self.filters = filters
            self.topicCreator = topicCreator
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case offset = "Offset"
            case limit = "Limit"
            case topicType = "TopicType"
            case clusterId = "ClusterId"
            case filters = "Filters"
            case topicCreator = "TopicCreator"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTopicsResponse) -> DescribeTopicsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTopicsRequest(environmentId: self.environmentId, topicName: self.topicName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, topicType: self.topicType, clusterId: self.clusterId, filters: self.filters, topicCreator: self.topicCreator)
        }
    }

    /// DescribeTopics返回参数结构体
    public struct DescribeTopicsResponse: TCPaginatedResponse {
        /// 主题集合数组。
        public let topicSets: [Topic]

        /// 主题数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicSets = "TopicSets"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Topic] {
            self.topicSets
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询主题列表
    ///
    /// 获取环境下主题列表
    @inlinable
    public func describeTopics(_ input: DescribeTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicsResponse> {
        self.client.execute(action: "DescribeTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主题列表
    ///
    /// 获取环境下主题列表
    @inlinable
    public func describeTopics(_ input: DescribeTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicsResponse {
        try await self.client.execute(action: "DescribeTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主题列表
    ///
    /// 获取环境下主题列表
    @inlinable
    public func describeTopics(environmentId: String, topicName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, topicType: UInt64? = nil, clusterId: String? = nil, filters: [Filter]? = nil, topicCreator: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicsResponse> {
        let input = DescribeTopicsRequest(environmentId: environmentId, topicName: topicName, offset: offset, limit: limit, topicType: topicType, clusterId: clusterId, filters: filters, topicCreator: topicCreator)
        return self.client.execute(action: "DescribeTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主题列表
    ///
    /// 获取环境下主题列表
    @inlinable
    public func describeTopics(environmentId: String, topicName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, topicType: UInt64? = nil, clusterId: String? = nil, filters: [Filter]? = nil, topicCreator: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicsResponse {
        let input = DescribeTopicsRequest(environmentId: environmentId, topicName: topicName, offset: offset, limit: limit, topicType: topicType, clusterId: clusterId, filters: filters, topicCreator: topicCreator)
        return try await self.client.execute(action: "DescribeTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
