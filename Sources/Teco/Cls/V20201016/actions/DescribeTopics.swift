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

extension Cls {
    /// DescribeTopics请求参数结构体
    public struct DescribeTopicsRequest: TCRequestModel {
        /// <br><li> topicName按照【日志主题名称】进行过滤。类型：String必选：否<br><li> logsetName按照【日志集名称】进行过滤。类型：String必选：否<br><li> topicId按照【日志主题ID】进行过滤。类型：String必选：否<br><li> logsetId按照【日志集ID】进行过滤，可通过调用DescribeLogsets查询已创建的日志集列表或登录控制台进行查看；也可以调用CreateLogset创建新的日志集。类型：String必选：否<br><li> tagKey按照【标签键】进行过滤。类型：String必选：否<br><li> tag:tagKey按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换，例如tag:exampleKey。类型：String必选：否<br><li> storageType按照【日志主题的存储类型】进行过滤。可选值 hot（标准存储），cold（低频存储）类型：String必选：否每次请求的Filters的上限为10，Filter.Values的上限为100。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeTopics返回参数结构体
    public struct DescribeTopicsResponse: TCResponseModel {
        /// 日志主题列表
        public let topics: [TopicInfo]

        /// 总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topics = "Topics"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取日志主题列表
    ///
    ///  本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(_ input: DescribeTopicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopicsResponse > {
        self.client.execute(action: "DescribeTopics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志主题列表
    ///
    ///  本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(_ input: DescribeTopicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicsResponse {
        try await self.client.execute(action: "DescribeTopics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志主题列表
    ///
    ///  本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopicsResponse > {
        self.describeTopics(DescribeTopicsRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 获取日志主题列表
    ///
    ///  本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicsResponse {
        try await self.describeTopics(DescribeTopicsRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
