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

extension Vpc {
    /// CreateSecurityGroup请求参数结构体
    public struct CreateSecurityGroupRequest: TCRequestModel {
        /// 安全组名称，可任意命名，但不得超过60个字符。
        public let groupName: String
        
        /// 安全组备注，最多100个字符。
        public let groupDescription: String
        
        /// 项目ID，默认0。可在qcloud控制台项目管理页面查询到。
        public let projectId: String?
        
        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?
        
        public init (groupName: String, groupDescription: String, projectId: String? = nil, tags: [Tag]? = nil) {
            self.groupName = groupName
            self.groupDescription = groupDescription
            self.projectId = projectId
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupDescription = "GroupDescription"
            case projectId = "ProjectId"
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
    ///
    /// 本接口（CreateSecurityGroup）用于创建新的安全组（SecurityGroup）。
    /// * 每个账户下每个地域的每个项目的<a href="https://cloud.tencent.com/document/product/213/12453">安全组数量限制</a>。
    /// * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用CreateSecurityGroupPolicies将安全组的规则设置为需要的规则。
    /// * 创建安全组同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSecurityGroup(_ input: CreateSecurityGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSecurityGroupResponse > {
        self.client.execute(action: "CreateSecurityGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建安全组
    ///
    /// 本接口（CreateSecurityGroup）用于创建新的安全组（SecurityGroup）。
    /// * 每个账户下每个地域的每个项目的<a href="https://cloud.tencent.com/document/product/213/12453">安全组数量限制</a>。
    /// * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用CreateSecurityGroupPolicies将安全组的规则设置为需要的规则。
    /// * 创建安全组同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSecurityGroup(_ input: CreateSecurityGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupResponse {
        try await self.client.execute(action: "CreateSecurityGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
