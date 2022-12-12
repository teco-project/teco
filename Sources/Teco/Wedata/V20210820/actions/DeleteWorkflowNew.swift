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
    /// DeleteWorkflowNew请求参数结构体
    public struct DeleteWorkflowNewRequest: TCRequestModel {
        /// 工作流id
        public let workFlowId: String
        
        /// true : 删除后下游任务可正常运行
        /// false：删除后下游任务不可运行
        public let deleteMode: Bool
        
        /// true：通知下游任务责任人
        /// false:  不通知下游任务责任人
        public let enableNotify: Bool
        
        /// 项目Id
        public let projectId: String
        
        public init (workFlowId: String, deleteMode: Bool, enableNotify: Bool, projectId: String) {
            self.workFlowId = workFlowId
            self.deleteMode = deleteMode
            self.enableNotify = enableNotify
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case workFlowId = "WorkFlowId"
            case deleteMode = "DeleteMode"
            case enableNotify = "EnableNotify"
            case projectId = "ProjectId"
        }
    }
    
    /// DeleteWorkflowNew返回参数结构体
    public struct DeleteWorkflowNewResponse: TCResponseModel {
        /// 返回删除结果
        public let data: OperateResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 删除工作流【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 删除工作流
    @inlinable
    public func deleteWorkflowNew(_ input: DeleteWorkflowNewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteWorkflowNewResponse > {
        self.client.execute(action: "DeleteWorkflowNew", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除工作流【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 删除工作流
    @inlinable
    public func deleteWorkflowNew(_ input: DeleteWorkflowNewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkflowNewResponse {
        try await self.client.execute(action: "DeleteWorkflowNew", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
