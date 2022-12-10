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
    /// 修改通道的属性
    ///
    /// 本接口（ModifyProxiesAttribute）用于修改实例的属性（目前只支持修改通道的名称）。
    @inlinable
    public func modifyProxiesAttribute(_ input: ModifyProxiesAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyProxiesAttributeResponse > {
        self.client.execute(action: "ModifyProxiesAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改通道的属性
    ///
    /// 本接口（ModifyProxiesAttribute）用于修改实例的属性（目前只支持修改通道的名称）。
    @inlinable
    public func modifyProxiesAttribute(_ input: ModifyProxiesAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProxiesAttributeResponse {
        try await self.client.execute(action: "ModifyProxiesAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyProxiesAttribute请求参数结构体
    public struct ModifyProxiesAttributeRequest: TCRequestModel {
        /// （旧参数，请切换到ProxyIds）一个或多个待操作的通道ID。
        public let instanceIds: [String]?
        
        /// 通道名称。可任意命名，但不得超过30个字符。
        public let proxyName: String?
        
        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        /// 更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?
        
        /// （新参数）一个或多个待操作的通道ID。
        public let proxyIds: [String]?
        
        public init (instanceIds: [String]?, proxyName: String?, clientToken: String?, proxyIds: [String]?) {
            self.instanceIds = instanceIds
            self.proxyName = proxyName
            self.clientToken = clientToken
            self.proxyIds = proxyIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case proxyName = "ProxyName"
            case clientToken = "ClientToken"
            case proxyIds = "ProxyIds"
        }
    }
    
    /// ModifyProxiesAttribute返回参数结构体
    public struct ModifyProxiesAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
