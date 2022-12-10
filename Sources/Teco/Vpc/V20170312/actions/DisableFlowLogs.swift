//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vpc {
    /// 停止流日志
    ///
    /// 本接口（DisableFlowLogs）用于停止流日志。
    @inlinable
    public func disableFlowLogs(_ input: DisableFlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableFlowLogsResponse > {
        self.client.execute(action: "DisableFlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 停止流日志
    ///
    /// 本接口（DisableFlowLogs）用于停止流日志。
    @inlinable
    public func disableFlowLogs(_ input: DisableFlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableFlowLogsResponse {
        try await self.client.execute(action: "DisableFlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DisableFlowLogs请求参数结构体
    public struct DisableFlowLogsRequest: TCRequestModel {
        /// 流日志Id。
        public let flowLogIds: [String]
        
        public init (flowLogIds: [String]) {
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
}