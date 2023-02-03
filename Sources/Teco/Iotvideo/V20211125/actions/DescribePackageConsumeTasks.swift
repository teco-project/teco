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

extension Iotvideo {
    /// DescribePackageConsumeTasks请求参数结构体
    public struct DescribePackageConsumeTasksRequest: TCRequestModel {
        /// 分页单页量
        public let limit: UInt64

        /// 分页的偏移量，第一页为0
        public let offset: UInt64

        public init(limit: UInt64, offset: UInt64) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribePackageConsumeTasks返回参数结构体
    public struct DescribePackageConsumeTasksResponse: TCResponseModel {
        /// 总数
        public let totalCount: UInt64

        /// 任务列表
        public let list: [PackageConsumeTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询套餐消耗记录列表
    @inlinable
    public func describePackageConsumeTasks(_ input: DescribePackageConsumeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageConsumeTasksResponse> {
        self.client.execute(action: "DescribePackageConsumeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询套餐消耗记录列表
    @inlinable
    public func describePackageConsumeTasks(_ input: DescribePackageConsumeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageConsumeTasksResponse {
        try await self.client.execute(action: "DescribePackageConsumeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询套餐消耗记录列表
    @inlinable
    public func describePackageConsumeTasks(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageConsumeTasksResponse> {
        let input = DescribePackageConsumeTasksRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribePackageConsumeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询套餐消耗记录列表
    @inlinable
    public func describePackageConsumeTasks(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageConsumeTasksResponse {
        let input = DescribePackageConsumeTasksRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribePackageConsumeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
