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

extension Tdmq {
    /// DescribeRocketMQTopics请求参数结构体
    public struct DescribeRocketMQTopicsRequest: TCRequestModel {
        /// 查询偏移量
        public let offset: UInt64

        /// 查询限制数
        public let limit: UInt64

        /// 集群ID
        public let clusterId: String

        /// 命名空间
        public let namespaceId: String

        /// 按主题类型过滤查询结果，可选择Normal, GlobalOrder, PartitionedOrder, Transaction
        public let filterType: [String]?

        /// 按主题名称搜索，支持模糊查询
        public let filterName: String?

        public init(offset: UInt64, limit: UInt64, clusterId: String, namespaceId: String, filterType: [String]? = nil, filterName: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.filterType = filterType
            self.filterName = filterName
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case filterType = "FilterType"
            case filterName = "FilterName"
        }
    }

    /// DescribeRocketMQTopics返回参数结构体
    public struct DescribeRocketMQTopicsResponse: TCResponseModel {
        /// 总记录数
        public let totalCount: UInt64

        /// 主题信息列表
        public let topics: [RocketMQTopic]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case topics = "Topics"
            case requestId = "RequestId"
        }
    }

    /// 获取RocketMQ主题列表
    @inlinable
    public func describeRocketMQTopics(_ input: DescribeRocketMQTopicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRocketMQTopicsResponse > {
        self.client.execute(action: "DescribeRocketMQTopics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ主题列表
    @inlinable
    public func describeRocketMQTopics(_ input: DescribeRocketMQTopicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQTopicsResponse {
        try await self.client.execute(action: "DescribeRocketMQTopics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取RocketMQ主题列表
    @inlinable
    public func describeRocketMQTopics(offset: UInt64, limit: UInt64, clusterId: String, namespaceId: String, filterType: [String]? = nil, filterName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRocketMQTopicsResponse > {
        self.describeRocketMQTopics(DescribeRocketMQTopicsRequest(offset: offset, limit: limit, clusterId: clusterId, namespaceId: namespaceId, filterType: filterType, filterName: filterName), logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ主题列表
    @inlinable
    public func describeRocketMQTopics(offset: UInt64, limit: UInt64, clusterId: String, namespaceId: String, filterType: [String]? = nil, filterName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQTopicsResponse {
        try await self.describeRocketMQTopics(DescribeRocketMQTopicsRequest(offset: offset, limit: limit, clusterId: clusterId, namespaceId: namespaceId, filterType: filterType, filterName: filterName), logger: logger, on: eventLoop)
    }
}
