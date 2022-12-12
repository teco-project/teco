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

extension Bm {
    /// AttachCamRole请求参数结构体
    public struct AttachCamRoleRequest: TCRequestModel {
        /// 服务器ID
        public let instanceId: String
        
        /// 角色名称。
        public let roleName: String
        
        public init (instanceId: String, roleName: String) {
            self.instanceId = instanceId
            self.roleName = roleName
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case roleName = "RoleName"
        }
    }
    
    /// AttachCamRole返回参数结构体
    public struct AttachCamRoleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 服务器绑定CAM角色
    ///
    /// 服务器绑定CAM角色，该角色授权访问黑石物理服务器服务，为黑石物理服务器提供了访问资源的权限，如请求服务器的临时证书
    @inlinable
    public func attachCamRole(_ input: AttachCamRoleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AttachCamRoleResponse > {
        self.client.execute(action: "AttachCamRole", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 服务器绑定CAM角色
    ///
    /// 服务器绑定CAM角色，该角色授权访问黑石物理服务器服务，为黑石物理服务器提供了访问资源的权限，如请求服务器的临时证书
    @inlinable
    public func attachCamRole(_ input: AttachCamRoleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachCamRoleResponse {
        try await self.client.execute(action: "AttachCamRole", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
