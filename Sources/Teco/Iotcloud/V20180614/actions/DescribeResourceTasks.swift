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

extension Iotcloud {
    /// DescribeResourceTasks请求参数结构体
    public struct DescribeResourceTasksRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 资源名称
        public let name: String

        /// 查询偏移量
        public let offset: UInt64

        /// 返回查询结果条数
        public let limit: UInt64

        /// 搜索过滤条件
        public let filters: [SearchKeyword]?

        public init(productID: String, name: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil) {
            self.productID = productID
            self.name = name
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeResourceTasks返回参数结构体
    public struct DescribeResourceTasksResponse: TCResponseModel {
        /// 资源任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfos: [FirmwareTaskInfo]?

        /// 资源任务总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfos = "TaskInfos"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询资源推送任务列表
    @inlinable
    public func describeResourceTasks(_ input: DescribeResourceTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTasksResponse> {
        self.client.execute(action: "DescribeResourceTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资源推送任务列表
    @inlinable
    public func describeResourceTasks(_ input: DescribeResourceTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTasksResponse {
        try await self.client.execute(action: "DescribeResourceTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资源推送任务列表
    @inlinable
    public func describeResourceTasks(productID: String, name: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTasksResponse> {
        self.describeResourceTasks(DescribeResourceTasksRequest(productID: productID, name: name, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源推送任务列表
    @inlinable
    public func describeResourceTasks(productID: String, name: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTasksResponse {
        try await self.describeResourceTasks(DescribeResourceTasksRequest(productID: productID, name: name, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
