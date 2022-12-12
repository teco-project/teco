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

extension Cam {
    /// UpdateGroup请求参数结构体
    public struct UpdateGroupRequest: TCRequestModel {
        /// 用户组 ID
        public let groupId: UInt64
        
        /// 用户组名
        public let groupName: String?
        
        /// 用户组描述
        public let remark: String?
        
        public init (groupId: UInt64, groupName: String? = nil, remark: String? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case remark = "Remark"
        }
    }
    
    /// UpdateGroup返回参数结构体
    public struct UpdateGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新用户组
    @inlinable
    public func updateGroup(_ input: UpdateGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateGroupResponse > {
        self.client.execute(action: "UpdateGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新用户组
    @inlinable
    public func updateGroup(_ input: UpdateGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGroupResponse {
        try await self.client.execute(action: "UpdateGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
