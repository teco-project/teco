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

extension Wedata {
    /// DescribeRelatedInstances请求参数结构体
    public struct DescribeRelatedInstancesRequest: TCRequestModel {
        /// 项目id
        public let projectId: String

        /// 数据时间，格式yyyy-MM-dd HH:mm:ss
        public let curRunDate: String

        /// 任务id
        public let taskId: Int64

        /// 距离当前任务的层级距离，-1表示取父节点，1表示子节点
        public let depth: Int64

        /// 页号，默认为1
        public let pageNumber: Int64?

        /// 页大小，默认为10，最大不超过200
        public let pageSize: Int64?

        public init(projectId: String, curRunDate: String, taskId: Int64, depth: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil) {
            self.projectId = projectId
            self.curRunDate = curRunDate
            self.taskId = taskId
            self.depth = depth
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case curRunDate = "CurRunDate"
            case taskId = "TaskId"
            case depth = "Depth"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }
    }

    /// DescribeRelatedInstances返回参数结构体
    public struct DescribeRelatedInstancesResponse: TCResponseModel {
        /// 无
        public let data: DescribeTaskInstancesData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(_ input: DescribeRelatedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRelatedInstancesResponse> {
        self.client.execute(action: "DescribeRelatedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(_ input: DescribeRelatedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRelatedInstancesResponse {
        try await self.client.execute(action: "DescribeRelatedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(projectId: String, curRunDate: String, taskId: Int64, depth: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRelatedInstancesResponse> {
        self.describeRelatedInstances(DescribeRelatedInstancesRequest(projectId: projectId, curRunDate: curRunDate, taskId: taskId, depth: depth, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(projectId: String, curRunDate: String, taskId: Int64, depth: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRelatedInstancesResponse {
        try await self.describeRelatedInstances(DescribeRelatedInstancesRequest(projectId: projectId, curRunDate: curRunDate, taskId: taskId, depth: depth, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }
}
