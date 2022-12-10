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

extension Mongodb {
    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnections(_ input: DescribeClientConnectionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClientConnectionsResponse > {
        self.client.execute(action: "DescribeClientConnections", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnections(_ input: DescribeClientConnectionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientConnectionsResponse {
        try await self.client.execute(action: "DescribeClientConnections", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClientConnections请求参数结构体
    public struct DescribeClientConnectionsRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String
        
        /// 单次请求返回的数量，最小值为1，最大值为1000，默认值为1000。
        public let limit: UInt64?
        
        /// 偏移量，默认值为0。
        public let offset: UInt64?
        
        public init (instanceId: String, limit: UInt64?, offset: UInt64?) {
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
    
    /// DescribeClientConnections返回参数结构体
    public struct DescribeClientConnectionsResponse: TCResponseModel {
        /// 客户端连接信息，包括客户端IP和对应IP的连接数量。
        public let clients: [ClientConnection]
        
        /// 满足条件的记录总条数，可用于分页查询。
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case clients = "Clients"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
