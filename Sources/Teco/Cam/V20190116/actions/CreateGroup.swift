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

extension Cam {
    /// 创建用户组
    ///
    /// 创建用户组
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateGroupResponse > {
        self.client.execute(action: "CreateGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建用户组
    ///
    /// 创建用户组
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        try await self.client.execute(action: "CreateGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateGroup请求参数结构体
    public struct CreateGroupRequest: TCRequestModel {
        /// 用户组名
        public let groupName: String
        
        /// 用户组描述
        public let remark: String?
        
        public init (groupName: String, remark: String?) {
            self.groupName = groupName
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case remark = "Remark"
        }
    }
    
    /// CreateGroup返回参数结构体
    public struct CreateGroupResponse: TCResponseModel {
        /// 用户组 ID
        public let groupId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }
}