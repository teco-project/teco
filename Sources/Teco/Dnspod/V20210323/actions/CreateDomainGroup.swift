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

extension Dnspod {
    /// 创建域名分组
    @inlinable
    public func createDomainGroup(_ input: CreateDomainGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDomainGroupResponse > {
        self.client.execute(action: "CreateDomainGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建域名分组
    @inlinable
    public func createDomainGroup(_ input: CreateDomainGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainGroupResponse {
        try await self.client.execute(action: "CreateDomainGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateDomainGroup请求参数结构体
    public struct CreateDomainGroupRequest: TCRequestModel {
        /// 域名分组
        public let groupName: String
        
        public init (groupName: String) {
            self.groupName = groupName
        }
        
        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
        }
    }
    
    /// CreateDomainGroup返回参数结构体
    public struct CreateDomainGroupResponse: TCResponseModel {
        /// 域名分组ID
        public let groupId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }
}
