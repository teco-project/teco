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

extension Clb {
    /// 获取传统型负载均衡监听器列表
    ///
    /// DescribeClassicalLBListeners 接口用于获取传统型负载均衡的监听器信息。
    @inlinable
    public func describeClassicalLBListeners(_ input: DescribeClassicalLBListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClassicalLBListenersResponse > {
        self.client.execute(action: "DescribeClassicalLBListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取传统型负载均衡监听器列表
    ///
    /// DescribeClassicalLBListeners 接口用于获取传统型负载均衡的监听器信息。
    @inlinable
    public func describeClassicalLBListeners(_ input: DescribeClassicalLBListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClassicalLBListenersResponse {
        try await self.client.execute(action: "DescribeClassicalLBListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClassicalLBListeners请求参数结构体
    public struct DescribeClassicalLBListenersRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String
        
        /// 负载均衡监听器ID列表。
        public let listenerIds: [String]?
        
        /// 负载均衡监听的协议：'TCP', 'UDP', 'HTTP', 'HTTPS'。
        public let `protocol`: String?
        
        /// 负载均衡监听端口，范围为[1-65535]。
        public let listenerPort: Int64?
        
        /// 监听器的状态，0：创建中，1：运行中。
        public let status: Int64?
        
        public init (loadBalancerId: String, listenerIds: [String]?, `protocol`: String?, listenerPort: Int64?, status: Int64?) {
            self.loadBalancerId = loadBalancerId
            self.listenerIds = listenerIds
            self.`protocol` = `protocol`
            self.listenerPort = listenerPort
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerIds = "ListenerIds"
            case `protocol` = "Protocol"
            case listenerPort = "ListenerPort"
            case status = "Status"
        }
    }
    
    /// DescribeClassicalLBListeners返回参数结构体
    public struct DescribeClassicalLBListenersResponse: TCResponseModel {
        /// 监听器列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listeners: [ClassicalListener]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case listeners = "Listeners"
            case requestId = "RequestId"
        }
    }
}