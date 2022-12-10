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

extension Tke {
    /// 获取集群RBAC管理员角色
    ///
    /// 通过此接口，可以获取集群的tke:admin的ClusterRole，即管理员角色，可以用于CAM侧高权限的用户，通过CAM策略给予子账户此接口权限，进而可以通过此接口直接获取到kubernetes集群内的管理员角色。
    @inlinable
    public func acquireClusterAdminRole(_ input: AcquireClusterAdminRoleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AcquireClusterAdminRoleResponse > {
        self.client.execute(action: "AcquireClusterAdminRole", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取集群RBAC管理员角色
    ///
    /// 通过此接口，可以获取集群的tke:admin的ClusterRole，即管理员角色，可以用于CAM侧高权限的用户，通过CAM策略给予子账户此接口权限，进而可以通过此接口直接获取到kubernetes集群内的管理员角色。
    @inlinable
    public func acquireClusterAdminRole(_ input: AcquireClusterAdminRoleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcquireClusterAdminRoleResponse {
        try await self.client.execute(action: "AcquireClusterAdminRole", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AcquireClusterAdminRole请求参数结构体
    public struct AcquireClusterAdminRoleRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// AcquireClusterAdminRole返回参数结构体
    public struct AcquireClusterAdminRoleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
