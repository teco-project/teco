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

extension Gaap {
    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable
    public func describeUDPListeners(_ input: DescribeUDPListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUDPListenersResponse > {
        self.client.execute(action: "DescribeUDPListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable
    public func describeUDPListeners(_ input: DescribeUDPListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUDPListenersResponse {
        try await self.client.execute(action: "DescribeUDPListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUDPListeners请求参数结构体
    public struct DescribeUDPListenersRequest: TCRequestModel {
        /// 过滤条件，根据通道ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        public let proxyId: String?
        
        /// 过滤条件，根据监听器ID精确查询。
        /// 当设置了ProxyId时，会检查该监听器是否归属于该通道。
        /// 当设置了GroupId时，会检查该监听器是否归属于该通道组。
        public let listenerId: String?
        
        /// 过滤条件，根据监听器名称精确查询
        public let listenerName: String?
        
        /// 过滤条件，根据监听器端口精确查询
        public let port: UInt64?
        
        /// 偏移量，默认为0
        public let offset: UInt64?
        
        /// 限制数量，默认为20
        public let limit: UInt64?
        
        /// 过滤条件，根据通道组ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        public let groupId: String?
        
        /// 过滤条件，支持按照端口或监听器名称进行模糊查询，该参数不能与ListenerName和Port同时使用
        public let searchValue: String?
        
        public init (proxyId: String?, listenerId: String?, listenerName: String?, port: UInt64?, offset: UInt64?, limit: UInt64?, groupId: String?, searchValue: String?) {
            self.proxyId = proxyId
            self.listenerId = listenerId
            self.listenerName = listenerName
            self.port = port
            self.offset = offset
            self.limit = limit
            self.groupId = groupId
            self.searchValue = searchValue
        }
        
        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case listenerId = "ListenerId"
            case listenerName = "ListenerName"
            case port = "Port"
            case offset = "Offset"
            case limit = "Limit"
            case groupId = "GroupId"
            case searchValue = "SearchValue"
        }
    }
    
    /// DescribeUDPListeners返回参数结构体
    public struct DescribeUDPListenersResponse: TCResponseModel {
        /// 监听器个数
        public let totalCount: UInt64
        
        /// UDP监听器列表
        public let listenerSet: [UDPListener]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }
    }
}
