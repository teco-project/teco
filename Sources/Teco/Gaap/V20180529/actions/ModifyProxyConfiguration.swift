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
    /// 修改通道配置
    ///
    /// 本接口（ModifyProxyConfiguration）用于修改通道的配置。根据当前业务的容量需求，扩容或缩容相关通道的配置。仅支持Scalarable为1的通道,Scalarable可通过接口DescribeProxies获取。
    @inlinable
    public func modifyProxyConfiguration(_ input: ModifyProxyConfigurationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyProxyConfigurationResponse > {
        self.client.execute(action: "ModifyProxyConfiguration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改通道配置
    ///
    /// 本接口（ModifyProxyConfiguration）用于修改通道的配置。根据当前业务的容量需求，扩容或缩容相关通道的配置。仅支持Scalarable为1的通道,Scalarable可通过接口DescribeProxies获取。
    @inlinable
    public func modifyProxyConfiguration(_ input: ModifyProxyConfigurationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProxyConfigurationResponse {
        try await self.client.execute(action: "ModifyProxyConfiguration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyProxyConfiguration请求参数结构体
    public struct ModifyProxyConfigurationRequest: TCRequestModel {
        /// （旧参数，请切换到ProxyId）通道的实例ID。
        public let instanceId: String?
        
        /// 需要调整到的目标带宽，单位：Mbps。
        /// Bandwidth与Concurrent必须至少设置一个。取值范围根据DescribeAccessRegionsByDestRegion接口获取得到
        public let bandwidth: UInt64?
        
        /// 需要调整到的目标并发值，单位：万。
        /// Bandwidth与Concurrent必须至少设置一个。取值范围根据DescribeAccessRegionsByDestRegion接口获取得到
        public let concurrent: UInt64?
        
        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        /// 更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?
        
        /// （新参数）通道的实例ID。
        public let proxyId: String?
        
        /// 计费方式 (0:按带宽计费，1:按流量计费 默认按带宽计费）
        public let billingType: Int64?
        
        public init (instanceId: String?, bandwidth: UInt64?, concurrent: UInt64?, clientToken: String?, proxyId: String?, billingType: Int64?) {
            self.instanceId = instanceId
            self.bandwidth = bandwidth
            self.concurrent = concurrent
            self.clientToken = clientToken
            self.proxyId = proxyId
            self.billingType = billingType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case bandwidth = "Bandwidth"
            case concurrent = "Concurrent"
            case clientToken = "ClientToken"
            case proxyId = "ProxyId"
            case billingType = "BillingType"
        }
    }
    
    /// ModifyProxyConfiguration返回参数结构体
    public struct ModifyProxyConfigurationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}