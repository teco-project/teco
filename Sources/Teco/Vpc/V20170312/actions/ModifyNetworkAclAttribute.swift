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
    /// 修改网络ACL属性
    ///
    /// 本接口（ModifyNetworkAclAttribute）用于修改网络ACL属性。
    @inlinable
    public func modifyNetworkAclAttribute(_ input: ModifyNetworkAclAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyNetworkAclAttributeResponse > {
        self.client.execute(action: "ModifyNetworkAclAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改网络ACL属性
    ///
    /// 本接口（ModifyNetworkAclAttribute）用于修改网络ACL属性。
    @inlinable
    public func modifyNetworkAclAttribute(_ input: ModifyNetworkAclAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkAclAttributeResponse {
        try await self.client.execute(action: "ModifyNetworkAclAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyNetworkAclAttribute请求参数结构体
    public struct ModifyNetworkAclAttributeRequest: TCRequestModel {
        /// 网络ACL实例ID。例如：acl-12345678。
        public let networkAclId: String
        
        /// 网络ACL名称，最大长度不能超过60个字节。
        public let networkAclName: String
        
        public init (networkAclId: String, networkAclName: String) {
            self.networkAclId = networkAclId
            self.networkAclName = networkAclName
        }
        
        enum CodingKeys: String, CodingKey {
            case networkAclId = "NetworkAclId"
            case networkAclName = "NetworkAclName"
        }
    }
    
    /// ModifyNetworkAclAttribute返回参数结构体
    public struct ModifyNetworkAclAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
