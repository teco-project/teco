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

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// ModifyNetDetect请求参数结构体
    public struct ModifyNetDetectRequest: TCRequest {
        /// 网络探测实例`ID`。形如：`netd-12345678`
        public let netDetectId: String

        /// 网络探测名称，最大长度不能超过60个字节。
        public let netDetectName: String?

        /// 探测目的IPv4地址数组，最多两个。
        public let detectDestinationIp: [String]?

        /// 下一跳类型，目前我们支持的类型有：
        /// VPN：VPN网关；
        /// DIRECTCONNECT：专线网关；
        /// PEERCONNECTION：对等连接；
        /// NAT：NAT网关；
        /// NORMAL_CVM：普通云服务器；
        /// CCN：云联网网关；
        /// NONEXTHOP：无下一跳；
        public let nextHopType: String?

        /// 下一跳目的网关，取值与“下一跳类型”相关：
        /// 下一跳类型为VPN，取值VPN网关ID，形如：vpngw-12345678；
        /// 下一跳类型为DIRECTCONNECT，取值专线网关ID，形如：dcg-12345678；
        /// 下一跳类型为PEERCONNECTION，取值对等连接ID，形如：pcx-12345678；
        /// 下一跳类型为NAT，取值Nat网关，形如：nat-12345678；
        /// 下一跳类型为NORMAL_CVM，取值云服务器IPv4地址，形如：10.0.0.12；
        /// 下一跳类型为CCN，取值云联网ID，形如：ccn-12345678；
        /// 下一跳类型为NONEXTHOP，指定网络探测为无下一跳的网络探测；
        public let nextHopDestination: String?

        /// 网络探测描述。
        public let netDetectDescription: String?

        public init(netDetectId: String, netDetectName: String? = nil, detectDestinationIp: [String]? = nil, nextHopType: String? = nil, nextHopDestination: String? = nil, netDetectDescription: String? = nil) {
            self.netDetectId = netDetectId
            self.netDetectName = netDetectName
            self.detectDestinationIp = detectDestinationIp
            self.nextHopType = nextHopType
            self.nextHopDestination = nextHopDestination
            self.netDetectDescription = netDetectDescription
        }

        enum CodingKeys: String, CodingKey {
            case netDetectId = "NetDetectId"
            case netDetectName = "NetDetectName"
            case detectDestinationIp = "DetectDestinationIp"
            case nextHopType = "NextHopType"
            case nextHopDestination = "NextHopDestination"
            case netDetectDescription = "NetDetectDescription"
        }
    }

    /// ModifyNetDetect返回参数结构体
    public struct ModifyNetDetectResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改网络探测
    ///
    /// 本接口(ModifyNetDetect)用于修改网络探测参数。
    @inlinable @discardableResult
    public func modifyNetDetect(_ input: ModifyNetDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetDetectResponse> {
        self.client.execute(action: "ModifyNetDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改网络探测
    ///
    /// 本接口(ModifyNetDetect)用于修改网络探测参数。
    @inlinable @discardableResult
    public func modifyNetDetect(_ input: ModifyNetDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetDetectResponse {
        try await self.client.execute(action: "ModifyNetDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改网络探测
    ///
    /// 本接口(ModifyNetDetect)用于修改网络探测参数。
    @inlinable @discardableResult
    public func modifyNetDetect(netDetectId: String, netDetectName: String? = nil, detectDestinationIp: [String]? = nil, nextHopType: String? = nil, nextHopDestination: String? = nil, netDetectDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetDetectResponse> {
        self.modifyNetDetect(.init(netDetectId: netDetectId, netDetectName: netDetectName, detectDestinationIp: detectDestinationIp, nextHopType: nextHopType, nextHopDestination: nextHopDestination, netDetectDescription: netDetectDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 修改网络探测
    ///
    /// 本接口(ModifyNetDetect)用于修改网络探测参数。
    @inlinable @discardableResult
    public func modifyNetDetect(netDetectId: String, netDetectName: String? = nil, detectDestinationIp: [String]? = nil, nextHopType: String? = nil, nextHopDestination: String? = nil, netDetectDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetDetectResponse {
        try await self.modifyNetDetect(.init(netDetectId: netDetectId, netDetectName: netDetectName, detectDestinationIp: detectDestinationIp, nextHopType: nextHopType, nextHopDestination: nextHopDestination, netDetectDescription: netDetectDescription), region: region, logger: logger, on: eventLoop)
    }
}
