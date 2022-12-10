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

extension Eiam {
    /// 修改账号组
    @inlinable
    public func modifyAccountGroup(_ input: ModifyAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAccountGroupResponse > {
        self.client.execute(action: "ModifyAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改账号组
    @inlinable
    public func modifyAccountGroup(_ input: ModifyAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountGroupResponse {
        try await self.client.execute(action: "ModifyAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAccountGroup请求参数结构体
    public struct ModifyAccountGroupRequest: TCRequestModel {
        /// 账号组ID。
        public let accountGroupId: String
        
        /// 账号组名。未传入该参数时，表示不进行修改。
        public let groupName: String?
        
        /// 描述，未传入该参数时，表示不进行修改。
        public let description: String?
        
        public init (accountGroupId: String, groupName: String?, description: String?) {
            self.accountGroupId = accountGroupId
            self.groupName = groupName
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case accountGroupId = "AccountGroupId"
            case groupName = "GroupName"
            case description = "Description"
        }
    }
    
    /// ModifyAccountGroup返回参数结构体
    public struct ModifyAccountGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
