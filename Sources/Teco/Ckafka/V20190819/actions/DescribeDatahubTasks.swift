//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ckafka {
    /// DescribeDatahubTasks请求参数结构体
    public struct DescribeDatahubTasksRequest: TCRequestModel {
        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        /// 分页偏移量，默认为0
        public let offset: Int64?

        /// 过滤条件，按照 TaskName 过滤，支持模糊查询
        public let searchWord: String?

        /// 转储的目标类型
        public let targetType: String?

        /// 任务类型，SOURCE数据接入，SINK数据流出
        public let taskType: String?

        /// 转储的源类型
        public let sourceType: String?

        /// 转储的资源
        public let resource: String?

        public init(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, targetType: String? = nil, taskType: String? = nil, sourceType: String? = nil, resource: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.searchWord = searchWord
            self.targetType = targetType
            self.taskType = taskType
            self.sourceType = sourceType
            self.resource = resource
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case searchWord = "SearchWord"
            case targetType = "TargetType"
            case taskType = "TaskType"
            case sourceType = "SourceType"
            case resource = "Resource"
        }
    }

    /// DescribeDatahubTasks返回参数结构体
    public struct DescribeDatahubTasksResponse: TCResponseModel {
        /// 返回任务查询结果
        public let result: DescribeDatahubTasksRes

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询Datahub任务列表
    ///
    /// 查询Datahub任务列表
    @inlinable
    public func describeDatahubTasks(_ input: DescribeDatahubTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatahubTasksResponse> {
        self.client.execute(action: "DescribeDatahubTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Datahub任务列表
    ///
    /// 查询Datahub任务列表
    @inlinable
    public func describeDatahubTasks(_ input: DescribeDatahubTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatahubTasksResponse {
        try await self.client.execute(action: "DescribeDatahubTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Datahub任务列表
    ///
    /// 查询Datahub任务列表
    @inlinable
    public func describeDatahubTasks(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, targetType: String? = nil, taskType: String? = nil, sourceType: String? = nil, resource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatahubTasksResponse> {
        self.describeDatahubTasks(DescribeDatahubTasksRequest(limit: limit, offset: offset, searchWord: searchWord, targetType: targetType, taskType: taskType, sourceType: sourceType, resource: resource), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Datahub任务列表
    ///
    /// 查询Datahub任务列表
    @inlinable
    public func describeDatahubTasks(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, targetType: String? = nil, taskType: String? = nil, sourceType: String? = nil, resource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatahubTasksResponse {
        try await self.describeDatahubTasks(DescribeDatahubTasksRequest(limit: limit, offset: offset, searchWord: searchWord, targetType: targetType, taskType: taskType, sourceType: sourceType, resource: resource), region: region, logger: logger, on: eventLoop)
    }
}
