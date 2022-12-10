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

extension Eiam {
    /// 新建用户组
    ///
    /// 新建用户组
    @inlinable
    public func createUserGroup(_ input: CreateUserGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateUserGroupResponse > {
        self.client.execute(action: "CreateUserGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新建用户组
    ///
    /// 新建用户组
    @inlinable
    public func createUserGroup(_ input: CreateUserGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserGroupResponse {
        try await self.client.execute(action: "CreateUserGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateUserGroup请求参数结构体
    public struct CreateUserGroupRequest: TCRequestModel {
        /// 用户组昵称，长度限制：64个字符。 DisplayName是唯一的。
        public let displayName: String
        
        /// 用户组备注，长度限制：512个字符。
        public let description: String?
        
        public init (displayName: String, description: String?) {
            self.displayName = displayName
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case description = "Description"
        }
    }
    
    /// CreateUserGroup返回参数结构体
    public struct CreateUserGroupResponse: TCResponseModel {
        /// 用户组ID，是用户组的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case userGroupId = "UserGroupId"
            case requestId = "RequestId"
        }
    }
}