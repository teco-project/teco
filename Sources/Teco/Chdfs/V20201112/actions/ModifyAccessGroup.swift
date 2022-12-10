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

extension Chdfs {
    /// 修改权限组属性
    ///
    /// 修改权限组属性。
    @inlinable
    public func modifyAccessGroup(_ input: ModifyAccessGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAccessGroupResponse > {
        self.client.execute(action: "ModifyAccessGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改权限组属性
    ///
    /// 修改权限组属性。
    @inlinable
    public func modifyAccessGroup(_ input: ModifyAccessGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessGroupResponse {
        try await self.client.execute(action: "ModifyAccessGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAccessGroup请求参数结构体
    public struct ModifyAccessGroupRequest: TCRequestModel {
        /// 权限组ID
        public let accessGroupId: String
        
        /// 权限组名称
        public let accessGroupName: String?
        
        /// 权限组描述
        public let description: String?
        
        public init (accessGroupId: String, accessGroupName: String?, description: String?) {
            self.accessGroupId = accessGroupId
            self.accessGroupName = accessGroupName
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case accessGroupId = "AccessGroupId"
            case accessGroupName = "AccessGroupName"
            case description = "Description"
        }
    }
    
    /// ModifyAccessGroup返回参数结构体
    public struct ModifyAccessGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}