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

extension Ecm {
    /// DescribeTargets请求参数结构体
    public struct DescribeTargetsRequest: TCRequestModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String
        
        /// 监听器 ID列表
        public let listenerIds: [String]?
        
        /// 监听器协议类型
        public let `protocol`: Int64?
        
        /// 监听器端口
        public let port: Int64?
        
        public init (loadBalancerId: String, listenerIds: [String]? = nil, `protocol`: Int64? = nil, port: Int64? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerIds = listenerIds
            self.`protocol` = `protocol`
            self.port = port
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerIds = "ListenerIds"
            case `protocol` = "Protocol"
            case port = "Port"
        }
    }
    
    /// DescribeTargets返回参数结构体
    public struct DescribeTargetsResponse: TCResponseModel {
        /// 监听器后端绑定的机器信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listeners: [ListenerBackend]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case listeners = "Listeners"
            case requestId = "RequestId"
        }
    }
    
    /// 查询负载均衡绑定的后端服务列表
    ///
    /// 查询负载均衡绑定的后端服务列表。
    @inlinable
    public func describeTargets(_ input: DescribeTargetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTargetsResponse > {
        self.client.execute(action: "DescribeTargets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询负载均衡绑定的后端服务列表
    ///
    /// 查询负载均衡绑定的后端服务列表。
    @inlinable
    public func describeTargets(_ input: DescribeTargetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTargetsResponse {
        try await self.client.execute(action: "DescribeTargets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
