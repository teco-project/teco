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

extension Solar {
    /// ExpireFlow请求参数结构体
    public struct ExpireFlowRequest: TCRequestModel {
        /// 工单ID
        public let flowId: String
        
        public init (flowId: String) {
            self.flowId = flowId
        }
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }
    
    /// ExpireFlow返回参数结构体
    public struct ExpireFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 工单失效接口
    ///
    /// 把审批中的工单置为已失效
    @inlinable
    public func expireFlow(_ input: ExpireFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExpireFlowResponse > {
        self.client.execute(action: "ExpireFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 工单失效接口
    ///
    /// 把审批中的工单置为已失效
    @inlinable
    public func expireFlow(_ input: ExpireFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExpireFlowResponse {
        try await self.client.execute(action: "ExpireFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
