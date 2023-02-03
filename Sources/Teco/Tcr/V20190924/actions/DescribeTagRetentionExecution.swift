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

extension Tcr {
    /// DescribeTagRetentionExecution请求参数结构体
    public struct DescribeTagRetentionExecutionRequest: TCRequestModel {
        /// 主实例iD
        public let registryId: String

        /// 规则Id
        public let retentionId: Int64

        /// 分页PageSize
        public let limit: Int64?

        /// 分页Page
        public let offset: Int64?

        public init(registryId: String, retentionId: Int64, limit: Int64? = nil, offset: Int64? = nil) {
            self.registryId = registryId
            self.retentionId = retentionId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case retentionId = "RetentionId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeTagRetentionExecution返回参数结构体
    public struct DescribeTagRetentionExecutionResponse: TCResponseModel {
        /// 版本保留执行记录列表
        public let retentionExecutionList: [RetentionExecution]

        /// 版本保留执行记录总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case retentionExecutionList = "RetentionExecutionList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询版本保留执行记录
    @inlinable
    public func describeTagRetentionExecution(_ input: DescribeTagRetentionExecutionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagRetentionExecutionResponse> {
        self.client.execute(action: "DescribeTagRetentionExecution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询版本保留执行记录
    @inlinable
    public func describeTagRetentionExecution(_ input: DescribeTagRetentionExecutionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagRetentionExecutionResponse {
        try await self.client.execute(action: "DescribeTagRetentionExecution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询版本保留执行记录
    @inlinable
    public func describeTagRetentionExecution(registryId: String, retentionId: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagRetentionExecutionResponse> {
        let input = DescribeTagRetentionExecutionRequest(registryId: registryId, retentionId: retentionId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeTagRetentionExecution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询版本保留执行记录
    @inlinable
    public func describeTagRetentionExecution(registryId: String, retentionId: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagRetentionExecutionResponse {
        let input = DescribeTagRetentionExecutionRequest(registryId: registryId, retentionId: retentionId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeTagRetentionExecution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
