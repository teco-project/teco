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
    /// 删除托管集群外网访问端口
    ///
    /// 删除托管集群外网访问端口（老的方式，仅支持托管集群外网端口）
    @inlinable
    public func deleteClusterEndpointVip(_ input: DeleteClusterEndpointVipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteClusterEndpointVipResponse > {
        self.client.execute(action: "DeleteClusterEndpointVip", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除托管集群外网访问端口
    ///
    /// 删除托管集群外网访问端口（老的方式，仅支持托管集群外网端口）
    @inlinable
    public func deleteClusterEndpointVip(_ input: DeleteClusterEndpointVipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterEndpointVipResponse {
        try await self.client.execute(action: "DeleteClusterEndpointVip", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteClusterEndpointVip请求参数结构体
    public struct DeleteClusterEndpointVipRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// DeleteClusterEndpointVip返回参数结构体
    public struct DeleteClusterEndpointVipResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}