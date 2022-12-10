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

extension Cloudstudio {
    /// 云服务器方式创建工作空间
    ///
    /// 云服务器方式创建工作空间
    @inlinable
    public func createWorkspaceByAgent(_ input: CreateWorkspaceByAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateWorkspaceByAgentResponse > {
        self.client.execute(action: "CreateWorkspaceByAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云服务器方式创建工作空间
    ///
    /// 云服务器方式创建工作空间
    @inlinable
    public func createWorkspaceByAgent(_ input: CreateWorkspaceByAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceByAgentResponse {
        try await self.client.execute(action: "CreateWorkspaceByAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateWorkspaceByAgent请求参数结构体
    public struct CreateWorkspaceByAgentRequest: TCRequestModel {
        /// 无
        public let cloudStudioSessionTeam: String
        
        /// 无
        public let agentSpaceDTO: AgentSpaceDTO
        
        public init (cloudStudioSessionTeam: String, agentSpaceDTO: AgentSpaceDTO) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.agentSpaceDTO = agentSpaceDTO
        }
        
        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case agentSpaceDTO = "AgentSpaceDTO"
        }
    }
    
    /// CreateWorkspaceByAgent返回参数结构体
    public struct CreateWorkspaceByAgentResponse: TCResponseModel {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: WorkspaceInfoDTO
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}