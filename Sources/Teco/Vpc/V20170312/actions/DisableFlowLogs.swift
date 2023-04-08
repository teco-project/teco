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

import TecoCore

extension Vpc {
    /// DisableFlowLogs请求参数结构体
    public struct DisableFlowLogsRequest: TCRequestModel {
        /// 流日志Id。
        public let flowLogIds: [String]

        public init(flowLogIds: [String]) {
            self.flowLogIds = flowLogIds
        }

        enum CodingKeys: String, CodingKey {
            case flowLogIds = "FlowLogIds"
        }
    }

    /// DisableFlowLogs返回参数结构体
    public struct DisableFlowLogsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止流日志
    ///
    /// 本接口（DisableFlowLogs）用于停止流日志。
    @inlinable @discardableResult
    public func disableFlowLogs(_ input: DisableFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableFlowLogsResponse> {
        self.client.execute(action: "DisableFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止流日志
    ///
    /// 本接口（DisableFlowLogs）用于停止流日志。
    @inlinable @discardableResult
    public func disableFlowLogs(_ input: DisableFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableFlowLogsResponse {
        try await self.client.execute(action: "DisableFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止流日志
    ///
    /// 本接口（DisableFlowLogs）用于停止流日志。
    @inlinable @discardableResult
    public func disableFlowLogs(flowLogIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableFlowLogsResponse> {
        self.disableFlowLogs(.init(flowLogIds: flowLogIds), region: region, logger: logger, on: eventLoop)
    }

    /// 停止流日志
    ///
    /// 本接口（DisableFlowLogs）用于停止流日志。
    @inlinable @discardableResult
    public func disableFlowLogs(flowLogIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableFlowLogsResponse {
        try await self.disableFlowLogs(.init(flowLogIds: flowLogIds), region: region, logger: logger, on: eventLoop)
    }
}
