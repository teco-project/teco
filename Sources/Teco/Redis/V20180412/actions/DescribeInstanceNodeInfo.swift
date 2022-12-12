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

extension Redis {
    /// DescribeInstanceNodeInfo请求参数结构体
    public struct DescribeInstanceNodeInfoRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 列表大小
        public let limit: Int64?
        
        /// 偏移量
        public let offset: Int64?
        
        public init (instanceId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeInstanceNodeInfo返回参数结构体
    public struct DescribeInstanceNodeInfoResponse: TCResponseModel {
        /// proxy节点数量
        public let proxyCount: Int64
        
        /// proxy节点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxy: [ProxyNodes]?
        
        /// redis节点数量
        public let redisCount: Int64
        
        /// redis节点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let redis: [RedisNodes]?
        
        /// tendis节点数量
        public let tendisCount: Int64
        
        /// tendis节点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tendis: [TendisNodes]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case proxyCount = "ProxyCount"
            case proxy = "Proxy"
            case redisCount = "RedisCount"
            case redis = "Redis"
            case tendisCount = "TendisCount"
            case tendis = "Tendis"
            case requestId = "RequestId"
        }
    }
    
    /// 查询实例节点信息
    @inlinable
    public func describeInstanceNodeInfo(_ input: DescribeInstanceNodeInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceNodeInfoResponse > {
        self.client.execute(action: "DescribeInstanceNodeInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例节点信息
    @inlinable
    public func describeInstanceNodeInfo(_ input: DescribeInstanceNodeInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceNodeInfoResponse {
        try await self.client.execute(action: "DescribeInstanceNodeInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
