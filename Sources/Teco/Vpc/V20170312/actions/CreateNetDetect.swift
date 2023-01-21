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

extension Vpc {
    /// CreateNetDetect请求参数结构体
    public struct CreateNetDetectRequest: TCRequestModel {
        /// `VPC`实例`ID`。形如：`vpc-12345678`
        public let vpcId: String

        /// 子网实例ID。形如：subnet-12345678。
        public let subnetId: String

        /// 网络探测名称，最大长度不能超过60个字节。
        public let netDetectName: String

        /// 探测目的IPv4地址数组。最多两个。
        public let detectDestinationIp: [String]

        /// 下一跳类型，目前我们支持的类型有：
        /// VPN：VPN网关；
        /// DIRECTCONNECT：专线网关；
        /// PEERCONNECTION：对等连接；
        /// NAT：NAT网关；
        /// NORMAL_CVM：普通云服务器；
        /// CCN：云联网网关；
        public let nextHopType: String?

        /// 下一跳目的网关，取值与“下一跳类型”相关：
        /// 下一跳类型为VPN，取值VPN网关ID，形如：vpngw-12345678；
        /// 下一跳类型为DIRECTCONNECT，取值专线网关ID，形如：dcg-12345678；
        /// 下一跳类型为PEERCONNECTION，取值对等连接ID，形如：pcx-12345678；
        /// 下一跳类型为NAT，取值Nat网关，形如：nat-12345678；
        /// 下一跳类型为NORMAL_CVM，取值云服务器IPv4地址，形如：10.0.0.12；
        /// 下一跳类型为CCN，取值云联网ID，形如：ccn-12345678；
        public let nextHopDestination: String?

        /// 网络探测描述。
        public let netDetectDescription: String?

        public init(vpcId: String, subnetId: String, netDetectName: String, detectDestinationIp: [String], nextHopType: String? = nil, nextHopDestination: String? = nil, netDetectDescription: String? = nil) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.netDetectName = netDetectName
            self.detectDestinationIp = detectDestinationIp
            self.nextHopType = nextHopType
            self.nextHopDestination = nextHopDestination
            self.netDetectDescription = netDetectDescription
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case netDetectName = "NetDetectName"
            case detectDestinationIp = "DetectDestinationIp"
            case nextHopType = "NextHopType"
            case nextHopDestination = "NextHopDestination"
            case netDetectDescription = "NetDetectDescription"
        }
    }

    /// CreateNetDetect返回参数结构体
    public struct CreateNetDetectResponse: TCResponseModel {
        /// 网络探测（NetDetect）对象。
        public let netDetect: NetDetect

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case netDetect = "NetDetect"
            case requestId = "RequestId"
        }
    }

    /// 创建网络探测
    ///
    /// 本接口(CreateNetDetect)用于创建网络探测。
    @inlinable
    public func createNetDetect(_ input: CreateNetDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetDetectResponse> {
        self.client.execute(action: "CreateNetDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建网络探测
    ///
    /// 本接口(CreateNetDetect)用于创建网络探测。
    @inlinable
    public func createNetDetect(_ input: CreateNetDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetDetectResponse {
        try await self.client.execute(action: "CreateNetDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建网络探测
    ///
    /// 本接口(CreateNetDetect)用于创建网络探测。
    @inlinable
    public func createNetDetect(vpcId: String, subnetId: String, netDetectName: String, detectDestinationIp: [String], nextHopType: String? = nil, nextHopDestination: String? = nil, netDetectDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetDetectResponse> {
        self.createNetDetect(CreateNetDetectRequest(vpcId: vpcId, subnetId: subnetId, netDetectName: netDetectName, detectDestinationIp: detectDestinationIp, nextHopType: nextHopType, nextHopDestination: nextHopDestination, netDetectDescription: netDetectDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 创建网络探测
    ///
    /// 本接口(CreateNetDetect)用于创建网络探测。
    @inlinable
    public func createNetDetect(vpcId: String, subnetId: String, netDetectName: String, detectDestinationIp: [String], nextHopType: String? = nil, nextHopDestination: String? = nil, netDetectDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetDetectResponse {
        try await self.createNetDetect(CreateNetDetectRequest(vpcId: vpcId, subnetId: subnetId, netDetectName: netDetectName, detectDestinationIp: detectDestinationIp, nextHopType: nextHopType, nextHopDestination: nextHopDestination, netDetectDescription: netDetectDescription), region: region, logger: logger, on: eventLoop)
    }
}
