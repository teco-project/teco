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

extension Dc {
    /// ModifyDirectConnectTunnelExtra请求参数结构体
    public struct ModifyDirectConnectTunnelExtraRequest: TCRequestModel {
        /// 专用通道ID
        public let directConnectTunnelId: String
        
        /// 专用通道的Vlan
        public let vlan: Int64?
        
        /// 用户侧BGP，Asn，AuthKey
        public let bgpPeer: BgpPeer?
        
        /// 用户侧过滤网段地址
        public let routeFilterPrefixes: RouteFilterPrefix?
        
        /// 腾讯侧互联IP
        public let tencentAddress: String?
        
        /// 腾讯侧备用互联IP
        public let tencentBackupAddress: String?
        
        /// 用户侧互联IP
        public let customerAddress: String?
        
        /// 专用通道带宽值
        public let bandwidth: Int64?
        
        /// BGP community开关
        public let enableBGPCommunity: Bool?
        
        /// 是否开启BFD
        public let bfdEnable: Int64?
        
        /// 是否开启NQA
        public let nqaEnable: Int64?
        
        /// BFD配置信息
        public let bfdInfo: BFDInfo?
        
        /// NQA配置信息
        public let nqaInfo: NQAInfo?
        
        /// 0：停用IPv6
        /// 1: 启用IPv6
        public let iPv6Enable: Int64?
        
        /// 去往用户侧的路由信息
        public let customerIDCRoutes: [RouteFilterPrefix]?
        
        /// 是否开启巨帧
        /// 1：开启
        /// 0：不开启
        public let jumboEnable: Int64?
        
        public init (directConnectTunnelId: String, vlan: Int64? = nil, bgpPeer: BgpPeer? = nil, routeFilterPrefixes: RouteFilterPrefix? = nil, tencentAddress: String? = nil, tencentBackupAddress: String? = nil, customerAddress: String? = nil, bandwidth: Int64? = nil, enableBGPCommunity: Bool? = nil, bfdEnable: Int64? = nil, nqaEnable: Int64? = nil, bfdInfo: BFDInfo? = nil, nqaInfo: NQAInfo? = nil, iPv6Enable: Int64? = nil, customerIDCRoutes: [RouteFilterPrefix]? = nil, jumboEnable: Int64? = nil) {
            self.directConnectTunnelId = directConnectTunnelId
            self.vlan = vlan
            self.bgpPeer = bgpPeer
            self.routeFilterPrefixes = routeFilterPrefixes
            self.tencentAddress = tencentAddress
            self.tencentBackupAddress = tencentBackupAddress
            self.customerAddress = customerAddress
            self.bandwidth = bandwidth
            self.enableBGPCommunity = enableBGPCommunity
            self.bfdEnable = bfdEnable
            self.nqaEnable = nqaEnable
            self.bfdInfo = bfdInfo
            self.nqaInfo = nqaInfo
            self.iPv6Enable = iPv6Enable
            self.customerIDCRoutes = customerIDCRoutes
            self.jumboEnable = jumboEnable
        }
        
        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
            case vlan = "Vlan"
            case bgpPeer = "BgpPeer"
            case routeFilterPrefixes = "RouteFilterPrefixes"
            case tencentAddress = "TencentAddress"
            case tencentBackupAddress = "TencentBackupAddress"
            case customerAddress = "CustomerAddress"
            case bandwidth = "Bandwidth"
            case enableBGPCommunity = "EnableBGPCommunity"
            case bfdEnable = "BfdEnable"
            case nqaEnable = "NqaEnable"
            case bfdInfo = "BfdInfo"
            case nqaInfo = "NqaInfo"
            case iPv6Enable = "IPv6Enable"
            case customerIDCRoutes = "CustomerIDCRoutes"
            case jumboEnable = "JumboEnable"
        }
    }
    
    /// ModifyDirectConnectTunnelExtra返回参数结构体
    public struct ModifyDirectConnectTunnelExtraResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改专用通道扩展信息
    ///
    /// 本接口（ModifyDirectConnectTunnelExtra）用于修改专用通道扩展信息
    @inlinable
    public func modifyDirectConnectTunnelExtra(_ input: ModifyDirectConnectTunnelExtraRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDirectConnectTunnelExtraResponse > {
        self.client.execute(action: "ModifyDirectConnectTunnelExtra", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改专用通道扩展信息
    ///
    /// 本接口（ModifyDirectConnectTunnelExtra）用于修改专用通道扩展信息
    @inlinable
    public func modifyDirectConnectTunnelExtra(_ input: ModifyDirectConnectTunnelExtraRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDirectConnectTunnelExtraResponse {
        try await self.client.execute(action: "ModifyDirectConnectTunnelExtra", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
