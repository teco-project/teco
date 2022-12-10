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

extension Cloudstudio {
    /// 停止运行空间
    @inlinable
    public func stopWorkspace(_ input: StopWorkspaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopWorkspaceResponse > {
        self.client.execute(action: "StopWorkspace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 停止运行空间
    @inlinable
    public func stopWorkspace(_ input: StopWorkspaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopWorkspaceResponse {
        try await self.client.execute(action: "StopWorkspace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopWorkspace请求参数结构体
    public struct StopWorkspaceRequest: TCRequestModel {
        /// 空间标识
        public let spaceKey: String
        
        /// 用户所属组
        public let cloudStudioSessionTeam: String
        
        /// 是否强制终止，true或者false
        public let force: String?
        
        public init (spaceKey: String, cloudStudioSessionTeam: String, force: String?) {
            self.spaceKey = spaceKey
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.force = force
        }
        
        enum CodingKeys: String, CodingKey {
            case spaceKey = "SpaceKey"
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case force = "Force"
        }
    }
    
    /// StopWorkspace返回参数结构体
    public struct StopWorkspaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
