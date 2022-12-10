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

extension Wedata {
    /// 更新工作流【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 更新工作流
    @inlinable
    public func modifyWorkflowInfo(_ input: ModifyWorkflowInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyWorkflowInfoResponse > {
        self.client.execute(action: "ModifyWorkflowInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新工作流【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 更新工作流
    @inlinable
    public func modifyWorkflowInfo(_ input: ModifyWorkflowInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWorkflowInfoResponse {
        try await self.client.execute(action: "ModifyWorkflowInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyWorkflowInfo请求参数结构体
    public struct ModifyWorkflowInfoRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String
        
        /// 工作流id
        public let workflowId: String
        
        /// 责任人
        public let owner: String?
        
        /// 责任人id
        public let ownerId: String?
        
        /// 备注
        public let workflowDesc: String?
        
        /// 工作流名称
        public let workflowName: String?
        
        /// 所属文件夹id
        public let folderId: String?
        
        /// 工作流所属用户分组id  若有多个,分号隔开: a;b;c
        public let userGroupId: String?
        
        /// 工作流所属用户分组名称  若有多个,分号隔开: a;b;c
        public let userGroupName: String?
        
        /// 工作流参数列表
        public let workflowParams: [ParamInfo]?
        
        /// 用于配置优化参数（线程、内存、CPU核数等），仅作用于Spark SQL节点。多个参数用英文分号分隔。
        public let generalTaskParams: [GeneralTaskParam]?
        
        public init (projectId: String, workflowId: String, owner: String?, ownerId: String?, workflowDesc: String?, workflowName: String?, folderId: String?, userGroupId: String?, userGroupName: String?, workflowParams: [ParamInfo]?, generalTaskParams: [GeneralTaskParam]?) {
            self.projectId = projectId
            self.workflowId = workflowId
            self.owner = owner
            self.ownerId = ownerId
            self.workflowDesc = workflowDesc
            self.workflowName = workflowName
            self.folderId = folderId
            self.userGroupId = userGroupId
            self.userGroupName = userGroupName
            self.workflowParams = workflowParams
            self.generalTaskParams = generalTaskParams
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case workflowId = "WorkflowId"
            case owner = "Owner"
            case ownerId = "OwnerId"
            case workflowDesc = "WorkflowDesc"
            case workflowName = "WorkflowName"
            case folderId = "FolderId"
            case userGroupId = "UserGroupId"
            case userGroupName = "UserGroupName"
            case workflowParams = "WorkflowParams"
            case generalTaskParams = "GeneralTaskParams"
        }
    }
    
    /// ModifyWorkflowInfo返回参数结构体
    public struct ModifyWorkflowInfoResponse: TCResponseModel {
        /// true代表成功，false代表失败
        public let data: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}