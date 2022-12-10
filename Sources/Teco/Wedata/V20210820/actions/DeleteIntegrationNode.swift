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
    /// 删除集成节点
    ///
    /// 删除集成节点
    @inlinable
    public func deleteIntegrationNode(_ input: DeleteIntegrationNodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteIntegrationNodeResponse > {
        self.client.execute(action: "DeleteIntegrationNode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除集成节点
    ///
    /// 删除集成节点
    @inlinable
    public func deleteIntegrationNode(_ input: DeleteIntegrationNodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIntegrationNodeResponse {
        try await self.client.execute(action: "DeleteIntegrationNode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteIntegrationNode请求参数结构体
    public struct DeleteIntegrationNodeRequest: TCRequestModel {
        /// 节点id
        public let id: String
        
        /// 项目id
        public let projectId: String
        
        public init (id: String, projectId: String) {
            self.id = id
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case projectId = "ProjectId"
        }
    }
    
    /// DeleteIntegrationNode返回参数结构体
    public struct DeleteIntegrationNodeResponse: TCResponseModel {
        /// 删除返回是否成功标识
        public let data: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}