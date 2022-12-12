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

extension Cme {
    /// CopyProject请求参数结构体
    public struct CopyProjectRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String
        
        /// 被复制的项目 ID。
        public let projectId: String
        
        /// 复制后的项目名称，不填为原项目名称+"(副本)"。
        public let name: String?
        
        /// 复制后的项目归属者，不填为原项目归属者。
        public let owner: Entity?
        
        /// 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        public let `operator`: String?
        
        public init (platform: String, projectId: String, name: String? = nil, owner: Entity? = nil, `operator`: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.name = name
            self.owner = owner
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case name = "Name"
            case owner = "Owner"
            case `operator` = "Operator"
        }
    }
    
    /// CopyProject返回参数结构体
    public struct CopyProjectResponse: TCResponseModel {
        /// 复制后的项目 ID。
        public let projectId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case requestId = "RequestId"
        }
    }
    
    /// 复制项目
    ///
    /// 复制一个项目，包括项目素材及轨道数据。目前仅普通剪辑及模板制作项目可复制，其它类型的项目不支持复制。
    @inlinable
    public func copyProject(_ input: CopyProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CopyProjectResponse > {
        self.client.execute(action: "CopyProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 复制项目
    ///
    /// 复制一个项目，包括项目素材及轨道数据。目前仅普通剪辑及模板制作项目可复制，其它类型的项目不支持复制。
    @inlinable
    public func copyProject(_ input: CopyProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyProjectResponse {
        try await self.client.execute(action: "CopyProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
