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

extension Wedata {
    /// FreezeTasksByMultiWorkflow请求参数结构体
    public struct FreezeTasksByMultiWorkflowRequest: TCRequestModel {
        /// 工作流Id集合
        public let workFlowIds: [String]
        
        public init (workFlowIds: [String]) {
            self.workFlowIds = workFlowIds
        }
        
        enum CodingKeys: String, CodingKey {
            case workFlowIds = "WorkFlowIds"
        }
    }
    
    /// FreezeTasksByMultiWorkflow返回参数结构体
    public struct FreezeTasksByMultiWorkflowResponse: TCResponseModel {
        /// 操作结果
        public let data: OperateResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 基于多个工作流进行批量冻结任务操作【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 基于多个工作流进行批量冻结任务操作
    @inlinable
    public func freezeTasksByMultiWorkflow(_ input: FreezeTasksByMultiWorkflowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < FreezeTasksByMultiWorkflowResponse > {
        self.client.execute(action: "FreezeTasksByMultiWorkflow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 基于多个工作流进行批量冻结任务操作【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 基于多个工作流进行批量冻结任务操作
    @inlinable
    public func freezeTasksByMultiWorkflow(_ input: FreezeTasksByMultiWorkflowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FreezeTasksByMultiWorkflowResponse {
        try await self.client.execute(action: "FreezeTasksByMultiWorkflow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
