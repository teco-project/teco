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

extension Ecm {
    /// CreateSecurityGroup请求参数结构体
    public struct CreateSecurityGroupRequest: TCRequestModel {
        /// 安全组名称，可任意命名，但不得超过60个字符。
        public let groupName: String
        
        /// 安全组备注，最多100个字符。
        public let groupDescription: String
        
        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?
        
        public init (groupName: String, groupDescription: String, tags: [Tag]? = nil) {
            self.groupName = groupName
            self.groupDescription = groupDescription
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupDescription = "GroupDescription"
            case tags = "Tags"
        }
    }
    
    /// CreateSecurityGroup返回参数结构体
    public struct CreateSecurityGroupResponse: TCResponseModel {
        /// 安全组对象。
        public let securityGroup: SecurityGroup
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case securityGroup = "SecurityGroup"
            case requestId = "RequestId"
        }
    }
    
    /// 创建安全组
    @inlinable
    public func createSecurityGroup(_ input: CreateSecurityGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSecurityGroupResponse > {
        self.client.execute(action: "CreateSecurityGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建安全组
    @inlinable
    public func createSecurityGroup(_ input: CreateSecurityGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupResponse {
        try await self.client.execute(action: "CreateSecurityGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
