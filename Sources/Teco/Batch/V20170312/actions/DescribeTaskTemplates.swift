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

extension Batch {
    /// DescribeTaskTemplates请求参数结构体
    public struct DescribeTaskTemplatesRequest: TCRequestModel {
        /// 任务模板ID列表，与Filters参数不能同时指定。
        public let taskTemplateIds: [String]?

        /// 过滤条件
        /// <li> task-template-name - String - 是否必填：否 -（过滤条件）按照任务模板名称过滤。</li>
        /// <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        /// <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        /// <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        /// 与TaskTemplateIds参数不能同时指定。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: Int64?

        /// 返回数量
        public let limit: Int64?

        public init(taskTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.taskTemplateIds = taskTemplateIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case taskTemplateIds = "TaskTemplateIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeTaskTemplates返回参数结构体
    public struct DescribeTaskTemplatesResponse: TCResponseModel {
        /// 任务模板列表
        public let taskTemplateSet: [TaskTemplateView]

        /// 任务模板数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskTemplateSet = "TaskTemplateSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(_ input: DescribeTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskTemplatesResponse> {
        self.client.execute(action: "DescribeTaskTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(_ input: DescribeTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskTemplatesResponse {
        try await self.client.execute(action: "DescribeTaskTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(taskTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskTemplatesResponse> {
        self.describeTaskTemplates(DescribeTaskTemplatesRequest(taskTemplateIds: taskTemplateIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务模板
    ///
    /// 用于查询任务模板信息
    @inlinable
    public func describeTaskTemplates(taskTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskTemplatesResponse {
        try await self.describeTaskTemplates(DescribeTaskTemplatesRequest(taskTemplateIds: taskTemplateIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
