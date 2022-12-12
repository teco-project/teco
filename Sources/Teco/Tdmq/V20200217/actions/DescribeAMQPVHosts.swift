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

extension Tdmq {
    /// DescribeAMQPVHosts请求参数结构体
    public struct DescribeAMQPVHostsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 偏移量
        public let offset: UInt64
        
        /// 限制数目
        public let limit: UInt64
        
        /// 按名称搜索
        public let nameKeyword: String?
        
        /// VHostId 列表过滤
        public let vHostIdList: [String]?
        
        public init (clusterId: String, offset: UInt64, limit: UInt64, nameKeyword: String? = nil, vHostIdList: [String]? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
            self.nameKeyword = nameKeyword
            self.vHostIdList = vHostIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
            case nameKeyword = "NameKeyword"
            case vHostIdList = "VHostIdList"
        }
    }
    
    /// DescribeAMQPVHosts返回参数结构体
    public struct DescribeAMQPVHostsResponse: TCResponseModel {
        /// Vhost 列表
        public let vHosts: [AMQPVHost]
        
        /// 总条数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case vHosts = "VHosts"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 获取Amqp Vhost列表
    ///
    /// 获取Amqp Vhost 列表
    @inlinable
    public func describeAMQPVHosts(_ input: DescribeAMQPVHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAMQPVHostsResponse > {
        self.client.execute(action: "DescribeAMQPVHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Amqp Vhost列表
    ///
    /// 获取Amqp Vhost 列表
    @inlinable
    public func describeAMQPVHosts(_ input: DescribeAMQPVHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPVHostsResponse {
        try await self.client.execute(action: "DescribeAMQPVHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
