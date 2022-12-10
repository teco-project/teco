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

extension Tke {
    /// 关闭集群删除保护
    ///
    /// 关闭集群删除保护
    @inlinable
    public func disableClusterDeletionProtection(_ input: DisableClusterDeletionProtectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableClusterDeletionProtectionResponse > {
        self.client.execute(action: "DisableClusterDeletionProtection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 关闭集群删除保护
    ///
    /// 关闭集群删除保护
    @inlinable
    public func disableClusterDeletionProtection(_ input: DisableClusterDeletionProtectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableClusterDeletionProtectionResponse {
        try await self.client.execute(action: "DisableClusterDeletionProtection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DisableClusterDeletionProtection请求参数结构体
    public struct DisableClusterDeletionProtectionRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// DisableClusterDeletionProtection返回参数结构体
    public struct DisableClusterDeletionProtectionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}