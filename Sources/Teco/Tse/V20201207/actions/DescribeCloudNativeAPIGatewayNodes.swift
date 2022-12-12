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

extension Tse {
    /// DescribeCloudNativeAPIGatewayNodes请求参数结构体
    public struct DescribeCloudNativeAPIGatewayNodesRequest: TCRequestModel {
        /// 云原生API网关实例ID。
        public let gatewayId: String
        
        /// 实例分组id
        public let groupId: String?
        
        /// 翻页获取多少个
        public let limit: Int64?
        
        /// 翻页从第几个开始获取
        public let offset: Int64?
        
        public init (gatewayId: String, groupId: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.gatewayId = gatewayId
            self.groupId = groupId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case groupId = "GroupId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeCloudNativeAPIGatewayNodes返回参数结构体
    public struct DescribeCloudNativeAPIGatewayNodesResponse: TCResponseModel {
        /// 获取云原生网关节点列表结果。
        public let result: DescribeCloudNativeAPIGatewayNodesResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 获取云原生网关节点列表
    @inlinable
    public func describeCloudNativeAPIGatewayNodes(_ input: DescribeCloudNativeAPIGatewayNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudNativeAPIGatewayNodesResponse > {
        self.client.execute(action: "DescribeCloudNativeAPIGatewayNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取云原生网关节点列表
    @inlinable
    public func describeCloudNativeAPIGatewayNodes(_ input: DescribeCloudNativeAPIGatewayNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayNodesResponse {
        try await self.client.execute(action: "DescribeCloudNativeAPIGatewayNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
