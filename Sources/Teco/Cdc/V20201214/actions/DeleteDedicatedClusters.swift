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

extension Cdc {
    /// DeleteDedicatedClusters请求参数结构体
    public struct DeleteDedicatedClustersRequest: TCRequestModel {
        /// 要删除的专用集群id
        public let dedicatedClusterIds: [String]
        
        public init (dedicatedClusterIds: [String]) {
            self.dedicatedClusterIds = dedicatedClusterIds
        }
        
        enum CodingKeys: String, CodingKey {
            case dedicatedClusterIds = "DedicatedClusterIds"
        }
    }
    
    /// DeleteDedicatedClusters返回参数结构体
    public struct DeleteDedicatedClustersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除专用集群
    @inlinable
    public func deleteDedicatedClusters(_ input: DeleteDedicatedClustersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDedicatedClustersResponse > {
        self.client.execute(action: "DeleteDedicatedClusters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除专用集群
    @inlinable
    public func deleteDedicatedClusters(_ input: DeleteDedicatedClustersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDedicatedClustersResponse {
        try await self.client.execute(action: "DeleteDedicatedClusters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
