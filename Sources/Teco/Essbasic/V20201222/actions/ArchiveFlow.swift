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

extension Essbasic {
    /// 归档流程
    ///
    /// 此接口（ArchiveFlow）用于流程的归档。
    /// 注意：归档后的流程不可再进行发送、签署、拒签、撤回等一系列操作。
    @inlinable
    public func archiveFlow(_ input: ArchiveFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ArchiveFlowResponse > {
        self.client.execute(action: "ArchiveFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 归档流程
    ///
    /// 此接口（ArchiveFlow）用于流程的归档。
    /// 注意：归档后的流程不可再进行发送、签署、拒签、撤回等一系列操作。
    @inlinable
    public func archiveFlow(_ input: ArchiveFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ArchiveFlowResponse {
        try await self.client.execute(action: "ArchiveFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ArchiveFlow请求参数结构体
    public struct ArchiveFlowRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 流程ID
        public let flowId: String
        
        public init (caller: Caller, flowId: String) {
            self.caller = caller
            self.flowId = flowId
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowId = "FlowId"
        }
    }
    
    /// ArchiveFlow返回参数结构体
    public struct ArchiveFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}