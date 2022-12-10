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

extension Tcr {
    /// 删除从实例
    ///
    /// 删除从实例
    @inlinable
    public func deleteReplicationInstance(_ input: DeleteReplicationInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteReplicationInstanceResponse > {
        self.client.execute(action: "DeleteReplicationInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除从实例
    ///
    /// 删除从实例
    @inlinable
    public func deleteReplicationInstance(_ input: DeleteReplicationInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReplicationInstanceResponse {
        try await self.client.execute(action: "DeleteReplicationInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteReplicationInstance请求参数结构体
    public struct DeleteReplicationInstanceRequest: TCRequestModel {
        /// 实例id
        public let registryId: String
        
        /// 复制实例ID
        public let replicationRegistryId: String
        
        /// 复制实例地域Id
        public let replicationRegionId: UInt64
        
        public init (registryId: String, replicationRegistryId: String, replicationRegionId: UInt64) {
            self.registryId = registryId
            self.replicationRegistryId = replicationRegistryId
            self.replicationRegionId = replicationRegionId
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case replicationRegistryId = "ReplicationRegistryId"
            case replicationRegionId = "ReplicationRegionId"
        }
    }
    
    /// DeleteReplicationInstance返回参数结构体
    public struct DeleteReplicationInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}