//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
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
    /// CreateDirectConnectTunnel请求参数结构体
    public struct CreateDirectConnectTunnelRequest: TCRequestModel {
        /// 专线 ID，例如：dc-kd7d06of
        public let directConnectId: String

        /// 专用通道名称
        public let directConnectTunnelName: String

        /// 物理专线 owner，缺省为当前客户（物理专线 owner）
        /// 共享专线时这里需要填写共享专线的开发商账号 ID
        public let directConnectOwnerAccount: String?

        /// 网络类型，分别为VPC、BMVPC，CCN，默认是VPC
        /// VPC：私有网络
        /// BMVPC：黑石网络
        /// CCN：云联网
        public let networkType: String?

        /// 网络地域
        public let networkRegion: String?

        /// 私有网络统一 ID 或者黑石网络统一 ID
        public let vpcId: String?

        /// 专线网关 ID，例如 dcg-d545ddf
        public let directConnectGatewayId: String?

        /// 专线带宽，单位：Mbps
        /// 默认是物理专线带宽值
        public let bandwidth: Int64?

        /// BGP ：BGP路由
        /// STATIC：静态
        /// 默认为 BGP 路由
        public let routeType: String?

        /// BgpPeer，用户侧bgp信息，包括Asn和AuthKey
        public let bgpPeer: BgpPeer?

        /// 静态路由，用户IDC的网段地址
        public let routeFilterPrefixes: [RouteFilterPrefix]?

        /// vlan，范围：0 ~ 3000
        /// 0：不开启子接口
        /// 默认值是非0
        public let vlan: Int64?

        /// TencentAddress，腾讯侧互联 IP
        public let tencentAddress: String?

        /// CustomerAddress，用户侧互联 IP
        public let customerAddress: String?

        /// TencentBackupAddress，腾讯侧备用互联 IP
        public let tencentBackupAddress: String?

        /// 高速上云服务ID
        public let cloudAttachId: String?

        /// 是否开启BFD
        public let bfdEnable: Int64?

        /// 是否开启NQA
        public let nqaEnable: Int64?

        /// BFD配置信息
        public let bfdInfo: BFDInfo?

        /// NQA配置信息
        public let nqaInfo: NQAInfo?

        public init(directConnectId: String, directConnectTunnelName: String, directConnectOwnerAccount: String? = nil, networkType: String? = nil, networkRegion: String? = nil, vpcId: String? = nil, directConnectGatewayId: String? = nil, bandwidth: Int64? = nil, routeType: String? = nil, bgpPeer: BgpPeer? = nil, routeFilterPrefixes: [RouteFilterPrefix]? = nil, vlan: Int64? = nil, tencentAddress: String? = nil, customerAddress: String? = nil, tencentBackupAddress: String? = nil, cloudAttachId: String? = nil, bfdEnable: Int64? = nil, nqaEnable: Int64? = nil, bfdInfo: BFDInfo? = nil, nqaInfo: NQAInfo? = nil) {
            self.directConnectId = directConnectId
            self.directConnectTunnelName = directConnectTunnelName
            self.directConnectOwnerAccount = directConnectOwnerAccount
            self.networkType = networkType
            self.networkRegion = networkRegion
            self.vpcId = vpcId
            self.directConnectGatewayId = directConnectGatewayId
            self.bandwidth = bandwidth
            self.routeType = routeType
            self.bgpPeer = bgpPeer
            self.routeFilterPrefixes = routeFilterPrefixes
            self.vlan = vlan
            self.tencentAddress = tencentAddress
            self.customerAddress = customerAddress
            self.tencentBackupAddress = tencentBackupAddress
            self.cloudAttachId = cloudAttachId
            self.bfdEnable = bfdEnable
            self.nqaEnable = nqaEnable
            self.bfdInfo = bfdInfo
            self.nqaInfo = nqaInfo
        }

        enum CodingKeys: String, CodingKey {
            case directConnectId = "DirectConnectId"
            case directConnectTunnelName = "DirectConnectTunnelName"
            case directConnectOwnerAccount = "DirectConnectOwnerAccount"
            case networkType = "NetworkType"
            case networkRegion = "NetworkRegion"
            case vpcId = "VpcId"
            case directConnectGatewayId = "DirectConnectGatewayId"
            case bandwidth = "Bandwidth"
            case routeType = "RouteType"
            case bgpPeer = "BgpPeer"
            case routeFilterPrefixes = "RouteFilterPrefixes"
            case vlan = "Vlan"
            case tencentAddress = "TencentAddress"
            case customerAddress = "CustomerAddress"
            case tencentBackupAddress = "TencentBackupAddress"
            case cloudAttachId = "CloudAttachId"
            case bfdEnable = "BfdEnable"
            case nqaEnable = "NqaEnable"
            case bfdInfo = "BfdInfo"
            case nqaInfo = "NqaInfo"
        }
    }

    /// CreateDirectConnectTunnel返回参数结构体
    public struct CreateDirectConnectTunnelResponse: TCResponseModel {
        /// 专用通道ID
        public let directConnectTunnelIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case directConnectTunnelIdSet = "DirectConnectTunnelIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建专用通道
    ///
    /// 用于创建专用通道的接口
    @inlinable
    public func createDirectConnectTunnel(_ input: CreateDirectConnectTunnelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectConnectTunnelResponse> {
        self.client.execute(action: "CreateDirectConnectTunnel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建专用通道
    ///
    /// 用于创建专用通道的接口
    @inlinable
    public func createDirectConnectTunnel(_ input: CreateDirectConnectTunnelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDirectConnectTunnelResponse {
        try await self.client.execute(action: "CreateDirectConnectTunnel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建专用通道
    ///
    /// 用于创建专用通道的接口
    @inlinable
    public func createDirectConnectTunnel(directConnectId: String, directConnectTunnelName: String, directConnectOwnerAccount: String? = nil, networkType: String? = nil, networkRegion: String? = nil, vpcId: String? = nil, directConnectGatewayId: String? = nil, bandwidth: Int64? = nil, routeType: String? = nil, bgpPeer: BgpPeer? = nil, routeFilterPrefixes: [RouteFilterPrefix]? = nil, vlan: Int64? = nil, tencentAddress: String? = nil, customerAddress: String? = nil, tencentBackupAddress: String? = nil, cloudAttachId: String? = nil, bfdEnable: Int64? = nil, nqaEnable: Int64? = nil, bfdInfo: BFDInfo? = nil, nqaInfo: NQAInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectConnectTunnelResponse> {
        self.createDirectConnectTunnel(.init(directConnectId: directConnectId, directConnectTunnelName: directConnectTunnelName, directConnectOwnerAccount: directConnectOwnerAccount, networkType: networkType, networkRegion: networkRegion, vpcId: vpcId, directConnectGatewayId: directConnectGatewayId, bandwidth: bandwidth, routeType: routeType, bgpPeer: bgpPeer, routeFilterPrefixes: routeFilterPrefixes, vlan: vlan, tencentAddress: tencentAddress, customerAddress: customerAddress, tencentBackupAddress: tencentBackupAddress, cloudAttachId: cloudAttachId, bfdEnable: bfdEnable, nqaEnable: nqaEnable, bfdInfo: bfdInfo, nqaInfo: nqaInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 创建专用通道
    ///
    /// 用于创建专用通道的接口
    @inlinable
    public func createDirectConnectTunnel(directConnectId: String, directConnectTunnelName: String, directConnectOwnerAccount: String? = nil, networkType: String? = nil, networkRegion: String? = nil, vpcId: String? = nil, directConnectGatewayId: String? = nil, bandwidth: Int64? = nil, routeType: String? = nil, bgpPeer: BgpPeer? = nil, routeFilterPrefixes: [RouteFilterPrefix]? = nil, vlan: Int64? = nil, tencentAddress: String? = nil, customerAddress: String? = nil, tencentBackupAddress: String? = nil, cloudAttachId: String? = nil, bfdEnable: Int64? = nil, nqaEnable: Int64? = nil, bfdInfo: BFDInfo? = nil, nqaInfo: NQAInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDirectConnectTunnelResponse {
        try await self.createDirectConnectTunnel(.init(directConnectId: directConnectId, directConnectTunnelName: directConnectTunnelName, directConnectOwnerAccount: directConnectOwnerAccount, networkType: networkType, networkRegion: networkRegion, vpcId: vpcId, directConnectGatewayId: directConnectGatewayId, bandwidth: bandwidth, routeType: routeType, bgpPeer: bgpPeer, routeFilterPrefixes: routeFilterPrefixes, vlan: vlan, tencentAddress: tencentAddress, customerAddress: customerAddress, tencentBackupAddress: tencentBackupAddress, cloudAttachId: cloudAttachId, bfdEnable: bfdEnable, nqaEnable: nqaEnable, bfdInfo: bfdInfo, nqaInfo: nqaInfo), region: region, logger: logger, on: eventLoop)
    }
}
