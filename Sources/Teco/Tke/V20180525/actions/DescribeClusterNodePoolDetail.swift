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
    /// 查询节点池详情
    ///
    /// 查询节点池详情
    @inlinable
    public func describeClusterNodePoolDetail(_ input: DescribeClusterNodePoolDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClusterNodePoolDetailResponse > {
        self.client.execute(action: "DescribeClusterNodePoolDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询节点池详情
    ///
    /// 查询节点池详情
    @inlinable
    public func describeClusterNodePoolDetail(_ input: DescribeClusterNodePoolDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterNodePoolDetailResponse {
        try await self.client.execute(action: "DescribeClusterNodePoolDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClusterNodePoolDetail请求参数结构体
    public struct DescribeClusterNodePoolDetailRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String
        
        /// 节点池id
        public let nodePoolId: String
        
        public init (clusterId: String, nodePoolId: String) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
        }
    }
    
    /// DescribeClusterNodePoolDetail返回参数结构体
    public struct DescribeClusterNodePoolDetailResponse: TCResponseModel {
        /// 节点池详情
        public let nodePool: NodePool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case nodePool = "NodePool"
            case requestId = "RequestId"
        }
    }
}