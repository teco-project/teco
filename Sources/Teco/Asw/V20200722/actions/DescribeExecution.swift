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

import Logging
import NIOCore
import TecoCore

extension Asw {
    /// DescribeExecution请求参数结构体
    public struct DescribeExecutionRequest: TCRequest {
        /// 执行资源名
        public let executionResourceName: String

        public init(executionResourceName: String) {
            self.executionResourceName = executionResourceName
        }

        enum CodingKeys: String, CodingKey {
            case executionResourceName = "ExecutionResourceName"
        }
    }

    /// DescribeExecution返回参数结构体
    public struct DescribeExecutionResponse: TCResponse {
        /// 执行资源名
        public let executionResourceName: String

        /// 资源名称
        public let name: String

        /// 执行开始时间，毫秒
        public let startDate: String

        /// 执行结束时间，毫秒
        public let stopDate: String

        /// 状态机资源名
        public let stateMachineResourceName: String

        /// 执行状态。INIT，RUNNING，SUCCEED，FAILED，TERMINATED
        public let status: String

        /// 执行的输入
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let input: String?

        /// 执行的输出
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let output: String?

        /// 启动执行时，状态机的定义
        public let executionDefinition: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case executionResourceName = "ExecutionResourceName"
            case name = "Name"
            case startDate = "StartDate"
            case stopDate = "StopDate"
            case stateMachineResourceName = "StateMachineResourceName"
            case status = "Status"
            case input = "Input"
            case output = "Output"
            case executionDefinition = "ExecutionDefinition"
            case requestId = "RequestId"
        }
    }

    /// 查询执行详细信息
    @inlinable
    public func describeExecution(_ input: DescribeExecutionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExecutionResponse> {
        self.client.execute(action: "DescribeExecution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询执行详细信息
    @inlinable
    public func describeExecution(_ input: DescribeExecutionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecutionResponse {
        try await self.client.execute(action: "DescribeExecution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询执行详细信息
    @inlinable
    public func describeExecution(executionResourceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExecutionResponse> {
        self.describeExecution(.init(executionResourceName: executionResourceName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询执行详细信息
    @inlinable
    public func describeExecution(executionResourceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecutionResponse {
        try await self.describeExecution(.init(executionResourceName: executionResourceName), region: region, logger: logger, on: eventLoop)
    }
}
