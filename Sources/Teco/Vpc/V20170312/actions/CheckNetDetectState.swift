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
    /// CheckNetDetectState请求参数结构体
    public struct CheckNetDetectStateRequest: TCRequestModel {
        /// 探测目的IPv4地址数组，最多两个。
        public let detectDestinationIp: [String]

        /// 下一跳类型，目前我们支持的类型有：
        /// VPN：VPN网关；
        /// DIRECTCONNECT：专线网关；
        /// PEERCONNECTION：对等连接；
        /// NAT：NAT网关；
        /// NORMAL_CVM：普通云服务器；
        public let nextHopType: String

        /// 下一跳目的网关，取值与“下一跳类型”相关：
        /// 下一跳类型为VPN，取值VPN网关ID，形如：vpngw-12345678；
        /// 下一跳类型为DIRECTCONNECT，取值专线网关ID，形如：dcg-12345678；
        /// 下一跳类型为PEERCONNECTION，取值对等连接ID，形如：pcx-12345678；
        /// 下一跳类型为NAT，取值Nat网关，形如：nat-12345678；
        /// 下一跳类型为NORMAL_CVM，取值云服务器IPv4地址，形如：10.0.0.12；
        public let nextHopDestination: String

        /// 网络探测实例ID。形如：netd-12345678。该参数与（VpcId，SubnetId，NetDetectName），至少要有一个。当NetDetectId存在时，使用NetDetectId。
        public let netDetectId: String?

        /// `VPC`实例`ID`。形如：`vpc-12345678`。该参数与（SubnetId，NetDetectName）配合使用，与NetDetectId至少要有一个。当NetDetectId存在时，使用NetDetectId。
        public let vpcId: String?

        /// 子网实例ID。形如：subnet-12345678。该参数与（VpcId，NetDetectName）配合使用，与NetDetectId至少要有一个。当NetDetectId存在时，使用NetDetectId。
        public let subnetId: String?

        /// 网络探测名称，最大长度不能超过60个字节。该参数与（VpcId，SubnetId）配合使用，与NetDetectId至少要有一个。当NetDetectId存在时，使用NetDetectId。
        public let netDetectName: String?

        public init(detectDestinationIp: [String], nextHopType: String, nextHopDestination: String, netDetectId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, netDetectName: String? = nil) {
            self.detectDestinationIp = detectDestinationIp
            self.nextHopType = nextHopType
            self.nextHopDestination = nextHopDestination
            self.netDetectId = netDetectId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.netDetectName = netDetectName
        }

        enum CodingKeys: String, CodingKey {
            case detectDestinationIp = "DetectDestinationIp"
            case nextHopType = "NextHopType"
            case nextHopDestination = "NextHopDestination"
            case netDetectId = "NetDetectId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case netDetectName = "NetDetectName"
        }
    }

    /// CheckNetDetectState返回参数结构体
    public struct CheckNetDetectStateResponse: TCResponseModel {
        /// 网络探测验证结果对象数组。
        public let netDetectIpStateSet: [NetDetectIpState]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case netDetectIpStateSet = "NetDetectIpStateSet"
            case requestId = "RequestId"
        }
    }

    /// 验证网络探测
    ///
    /// 本接口(CheckNetDetectState)用于验证网络探测。
    @inlinable
    public func checkNetDetectState(_ input: CheckNetDetectStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckNetDetectStateResponse> {
        self.client.execute(action: "CheckNetDetectState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证网络探测
    ///
    /// 本接口(CheckNetDetectState)用于验证网络探测。
    @inlinable
    public func checkNetDetectState(_ input: CheckNetDetectStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckNetDetectStateResponse {
        try await self.client.execute(action: "CheckNetDetectState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证网络探测
    ///
    /// 本接口(CheckNetDetectState)用于验证网络探测。
    @inlinable
    public func checkNetDetectState(detectDestinationIp: [String], nextHopType: String, nextHopDestination: String, netDetectId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, netDetectName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckNetDetectStateResponse> {
        self.checkNetDetectState(CheckNetDetectStateRequest(detectDestinationIp: detectDestinationIp, nextHopType: nextHopType, nextHopDestination: nextHopDestination, netDetectId: netDetectId, vpcId: vpcId, subnetId: subnetId, netDetectName: netDetectName), region: region, logger: logger, on: eventLoop)
    }

    /// 验证网络探测
    ///
    /// 本接口(CheckNetDetectState)用于验证网络探测。
    @inlinable
    public func checkNetDetectState(detectDestinationIp: [String], nextHopType: String, nextHopDestination: String, netDetectId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, netDetectName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckNetDetectStateResponse {
        try await self.checkNetDetectState(CheckNetDetectStateRequest(detectDestinationIp: detectDestinationIp, nextHopType: nextHopType, nextHopDestination: nextHopDestination, netDetectId: netDetectId, vpcId: vpcId, subnetId: subnetId, netDetectName: netDetectName), region: region, logger: logger, on: eventLoop)
    }
}
