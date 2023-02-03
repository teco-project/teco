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

extension Cdb {
    /// ModifyCDBProxyVipVPort请求参数结构体
    public struct ModifyCDBProxyVipVPortRequest: TCRequestModel {
        /// 代理组ID
        public let proxyGroupId: String

        /// 私有网络ID
        public let uniqVpcId: String

        /// 私有网络子网ID
        public let uniqSubnetId: String

        /// 目标IP
        public let dstIp: String?

        /// 目标端口
        public let dstPort: UInt64?

        /// 旧IP回收时间 单位小时
        public let releaseDuration: UInt64?

        public init(proxyGroupId: String, uniqVpcId: String, uniqSubnetId: String, dstIp: String? = nil, dstPort: UInt64? = nil, releaseDuration: UInt64? = nil) {
            self.proxyGroupId = proxyGroupId
            self.uniqVpcId = uniqVpcId
            self.uniqSubnetId = uniqSubnetId
            self.dstIp = dstIp
            self.dstPort = dstPort
            self.releaseDuration = releaseDuration
        }

        enum CodingKeys: String, CodingKey {
            case proxyGroupId = "ProxyGroupId"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
            case dstIp = "DstIp"
            case dstPort = "DstPort"
            case releaseDuration = "ReleaseDuration"
        }
    }

    /// ModifyCDBProxyVipVPort返回参数结构体
    public struct ModifyCDBProxyVipVPortResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据库代理VIP或端口
    @inlinable @discardableResult
    public func modifyCDBProxyVipVPort(_ input: ModifyCDBProxyVipVPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCDBProxyVipVPortResponse> {
        self.client.execute(action: "ModifyCDBProxyVipVPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库代理VIP或端口
    @inlinable @discardableResult
    public func modifyCDBProxyVipVPort(_ input: ModifyCDBProxyVipVPortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCDBProxyVipVPortResponse {
        try await self.client.execute(action: "ModifyCDBProxyVipVPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据库代理VIP或端口
    @inlinable @discardableResult
    public func modifyCDBProxyVipVPort(proxyGroupId: String, uniqVpcId: String, uniqSubnetId: String, dstIp: String? = nil, dstPort: UInt64? = nil, releaseDuration: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCDBProxyVipVPortResponse> {
        let input = ModifyCDBProxyVipVPortRequest(proxyGroupId: proxyGroupId, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, dstIp: dstIp, dstPort: dstPort, releaseDuration: releaseDuration)
        return self.client.execute(action: "ModifyCDBProxyVipVPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库代理VIP或端口
    @inlinable @discardableResult
    public func modifyCDBProxyVipVPort(proxyGroupId: String, uniqVpcId: String, uniqSubnetId: String, dstIp: String? = nil, dstPort: UInt64? = nil, releaseDuration: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCDBProxyVipVPortResponse {
        let input = ModifyCDBProxyVipVPortRequest(proxyGroupId: proxyGroupId, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, dstIp: dstIp, dstPort: dstPort, releaseDuration: releaseDuration)
        return try await self.client.execute(action: "ModifyCDBProxyVipVPort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
