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
    /// 删除安全组
    ///
    /// 只有当前账号下的安全组允许被删除。
    /// 安全组实例ID如果在其他安全组的规则中被引用，则无法直接删除。这种情况下，需要先进行规则修改，再删除安全组。
    /// 删除的安全组无法再找回，请谨慎调用。
    @inlinable
    public func deleteSecurityGroup(_ input: DeleteSecurityGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSecurityGroupResponse > {
        self.client.execute(action: "DeleteSecurityGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除安全组
    ///
    /// 只有当前账号下的安全组允许被删除。
    /// 安全组实例ID如果在其他安全组的规则中被引用，则无法直接删除。这种情况下，需要先进行规则修改，再删除安全组。
    /// 删除的安全组无法再找回，请谨慎调用。
    @inlinable
    public func deleteSecurityGroup(_ input: DeleteSecurityGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityGroupResponse {
        try await self.client.execute(action: "DeleteSecurityGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteSecurityGroup请求参数结构体
    public struct DeleteSecurityGroupRequest: TCRequestModel {
        /// 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupId: String
        
        public init (securityGroupId: String) {
            self.securityGroupId = securityGroupId
        }
        
        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
        }
    }
    
    /// DeleteSecurityGroup返回参数结构体
    public struct DeleteSecurityGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
