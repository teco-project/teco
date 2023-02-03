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

extension Vpc {
    /// EnableFlowLogs请求参数结构体
    public struct EnableFlowLogsRequest: TCRequestModel {
        /// 流日志Id。
        public let flowLogIds: [String]

        public init(flowLogIds: [String]) {
            self.flowLogIds = flowLogIds
        }

        enum CodingKeys: String, CodingKey {
            case flowLogIds = "FlowLogIds"
        }
    }

    /// EnableFlowLogs返回参数结构体
    public struct EnableFlowLogsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启动流日志
    ///
    /// 本接口（EnableFlowLogs）用于启动流日志。
    @inlinable @discardableResult
    public func enableFlowLogs(_ input: EnableFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableFlowLogsResponse> {
        self.client.execute(action: "EnableFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动流日志
    ///
    /// 本接口（EnableFlowLogs）用于启动流日志。
    @inlinable @discardableResult
    public func enableFlowLogs(_ input: EnableFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableFlowLogsResponse {
        try await self.client.execute(action: "EnableFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动流日志
    ///
    /// 本接口（EnableFlowLogs）用于启动流日志。
    @inlinable @discardableResult
    public func enableFlowLogs(flowLogIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableFlowLogsResponse> {
        let input = EnableFlowLogsRequest(flowLogIds: flowLogIds)
        return self.client.execute(action: "EnableFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动流日志
    ///
    /// 本接口（EnableFlowLogs）用于启动流日志。
    @inlinable @discardableResult
    public func enableFlowLogs(flowLogIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableFlowLogsResponse {
        let input = EnableFlowLogsRequest(flowLogIds: flowLogIds)
        return try await self.client.execute(action: "EnableFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
