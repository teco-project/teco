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

extension Asw {
    /// DescribeExecutions请求参数结构体
    public struct DescribeExecutionsRequest: TCRequestModel {
        /// 状态机资源名
        public let stateMachineResourceName: String

        /// 页大小，最大100
        public let pageSize: Int64

        /// 页序号，从1开始
        public let pageIndex: Int64

        /// 按状态过滤条件，INIT，RUNNING，SUCCEED，FAILED，TERMINATED
        public let filterExecutionStatus: String?

        /// 按执行名过滤条件
        public let filterExecutionResourceName: String?

        public init(stateMachineResourceName: String, pageSize: Int64, pageIndex: Int64, filterExecutionStatus: String? = nil, filterExecutionResourceName: String? = nil) {
            self.stateMachineResourceName = stateMachineResourceName
            self.pageSize = pageSize
            self.pageIndex = pageIndex
            self.filterExecutionStatus = filterExecutionStatus
            self.filterExecutionResourceName = filterExecutionResourceName
        }

        enum CodingKeys: String, CodingKey {
            case stateMachineResourceName = "StateMachineResourceName"
            case pageSize = "PageSize"
            case pageIndex = "PageIndex"
            case filterExecutionStatus = "FilterExecutionStatus"
            case filterExecutionResourceName = "FilterExecutionResourceName"
        }
    }

    /// DescribeExecutions返回参数结构体
    public struct DescribeExecutionsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询状态机执行列表
    ///
    /// 对状态机的执行历史进行描述.
    @inlinable
    public func describeExecutions(_ input: DescribeExecutionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeExecutionsResponse > {
        self.client.execute(action: "DescribeExecutions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询状态机执行列表
    ///
    /// 对状态机的执行历史进行描述.
    @inlinable
    public func describeExecutions(_ input: DescribeExecutionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecutionsResponse {
        try await self.client.execute(action: "DescribeExecutions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询状态机执行列表
    ///
    /// 对状态机的执行历史进行描述.
    @inlinable
    public func describeExecutions(stateMachineResourceName: String, pageSize: Int64, pageIndex: Int64, filterExecutionStatus: String? = nil, filterExecutionResourceName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeExecutionsResponse > {
        self.describeExecutions(DescribeExecutionsRequest(stateMachineResourceName: stateMachineResourceName, pageSize: pageSize, pageIndex: pageIndex, filterExecutionStatus: filterExecutionStatus, filterExecutionResourceName: filterExecutionResourceName), logger: logger, on: eventLoop)
    }

    /// 查询状态机执行列表
    ///
    /// 对状态机的执行历史进行描述.
    @inlinable
    public func describeExecutions(stateMachineResourceName: String, pageSize: Int64, pageIndex: Int64, filterExecutionStatus: String? = nil, filterExecutionResourceName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecutionsResponse {
        try await self.describeExecutions(DescribeExecutionsRequest(stateMachineResourceName: stateMachineResourceName, pageSize: pageSize, pageIndex: pageIndex, filterExecutionStatus: filterExecutionStatus, filterExecutionResourceName: filterExecutionResourceName), logger: logger, on: eventLoop)
    }
}
