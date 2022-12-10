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

extension Cynosdb {
    /// 查询集群参数
    ///
    /// 本接口（DescribeClusterParams）用于查询集群参数
    @inlinable
    public func describeClusterParams(_ input: DescribeClusterParamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClusterParamsResponse > {
        self.client.execute(action: "DescribeClusterParams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询集群参数
    ///
    /// 本接口（DescribeClusterParams）用于查询集群参数
    @inlinable
    public func describeClusterParams(_ input: DescribeClusterParamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterParamsResponse {
        try await self.client.execute(action: "DescribeClusterParams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClusterParams请求参数结构体
    public struct DescribeClusterParamsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// DescribeClusterParams返回参数结构体
    public struct DescribeClusterParamsResponse: TCResponseModel {
        /// 参数个数
        public let totalCount: Int64
        
        /// 实例参数列表
        public let items: [ParamInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}
