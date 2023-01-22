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

extension Cme {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 项目 Id，使用项目 Id 进行过滤。
        public let projectId: String?

        /// 任务类型集合，取值有：
        /// <li>VIDEO_EDIT_PROJECT_EXPORT：视频编辑项目导出。</li>
        ///
        /// 注：不填不使用任务类型进行过滤。
        public let taskTypeSet: [String]?

        /// 任务状态集合，取值有：
        /// <li>PROCESSING：处理中；</li>
        /// <li>SUCCESS：成功；</li>
        /// <li>FAIL：失败。</li>
        ///
        /// 注：不填则不使用任务状态进行过滤。
        public let statusSet: [String]?

        /// 分页返回的起始偏移量，默认值：0。
        public let offset: UInt64?

        /// 分页返回的记录条数，默认值：10。最大值：20。
        public let limit: UInt64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以获取所有任务信息。如果指定操作者，则操作者需要是任务发起者。
        public let `operator`: String?

        public init(platform: String, projectId: String? = nil, taskTypeSet: [String]? = nil, statusSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.taskTypeSet = taskTypeSet
            self.statusSet = statusSet
            self.offset = offset
            self.limit = limit
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case taskTypeSet = "TaskTypeSet"
            case statusSet = "StatusSet"
            case offset = "Offset"
            case limit = "Limit"
            case `operator` = "Operator"
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCResponseModel {
        /// 符合搜索条件的记录总数。
        public let totalCount: UInt64

        /// 任务基础信息列表。
        public let taskBaseInfoSet: [TaskBaseInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case taskBaseInfoSet = "TaskBaseInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取任务列表
    ///
    /// 获取任务列表，支持条件筛选，返回对应的任务基础信息列表。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// 获取任务列表，支持条件筛选，返回对应的任务基础信息列表。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务列表
    ///
    /// 获取任务列表，支持条件筛选，返回对应的任务基础信息列表。
    @inlinable
    public func describeTasks(platform: String, projectId: String? = nil, taskTypeSet: [String]? = nil, statusSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.describeTasks(DescribeTasksRequest(platform: platform, projectId: projectId, taskTypeSet: taskTypeSet, statusSet: statusSet, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// 获取任务列表，支持条件筛选，返回对应的任务基础信息列表。
    @inlinable
    public func describeTasks(platform: String, projectId: String? = nil, taskTypeSet: [String]? = nil, statusSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.describeTasks(DescribeTasksRequest(platform: platform, projectId: projectId, taskTypeSet: taskTypeSet, statusSet: statusSet, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
