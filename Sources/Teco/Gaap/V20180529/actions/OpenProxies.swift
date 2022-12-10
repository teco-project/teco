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

extension Gaap {
    /// 开启通道
    ///
    /// 该接口（OpenProxies）用于开启一条或者多条通道。
    @inlinable
    public func openProxies(_ input: OpenProxiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < OpenProxiesResponse > {
        self.client.execute(action: "OpenProxies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 开启通道
    ///
    /// 该接口（OpenProxies）用于开启一条或者多条通道。
    @inlinable
    public func openProxies(_ input: OpenProxiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenProxiesResponse {
        try await self.client.execute(action: "OpenProxies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// OpenProxies请求参数结构体
    public struct OpenProxiesRequest: TCRequestModel {
        /// （旧参数，请切换到ProxyIds）通道的实例ID列表。
        public let instanceIds: [String]?
        
        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        /// 更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?
        
        /// （新参数）通道的实例ID列表。
        public let proxyIds: [String]?
        
        public init (instanceIds: [String]?, clientToken: String?, proxyIds: [String]?) {
            self.instanceIds = instanceIds
            self.clientToken = clientToken
            self.proxyIds = proxyIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case clientToken = "ClientToken"
            case proxyIds = "ProxyIds"
        }
    }
    
    /// OpenProxies返回参数结构体
    public struct OpenProxiesResponse: TCResponseModel {
        /// 非关闭状态下的通道实例ID列表，不可开启。
        public let invalidStatusInstanceSet: [String]
        
        /// 开启操作失败的通道实例ID列表。
        public let operationFailedInstanceSet: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case invalidStatusInstanceSet = "InvalidStatusInstanceSet"
            case operationFailedInstanceSet = "OperationFailedInstanceSet"
            case requestId = "RequestId"
        }
    }
}