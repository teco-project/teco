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

extension Iotexplorer {
    /// 删除项目
    ///
    /// 提供删除某个项目的能力
    @inlinable
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteProjectResponse > {
        self.client.execute(action: "DeleteProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除项目
    ///
    /// 提供删除某个项目的能力
    @inlinable
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        try await self.client.execute(action: "DeleteProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteProject请求参数结构体
    public struct DeleteProjectRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String
        
        public init (projectId: String) {
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }
    
    /// DeleteProject返回参数结构体
    public struct DeleteProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}