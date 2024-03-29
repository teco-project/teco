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

extension Antiddos {
    /// CreateCcBlackWhiteIpList请求参数结构体
    public struct CreateCcBlackWhiteIpListRequest: TCRequest {
        /// 资源实例ID
        public let instanceId: String

        /// IP列表
        public let ipList: [IpSegment]

        /// IP类型，取值[black(黑名单IP), white(白名单IP)]
        public let type: String

        /// Ip地址
        public let ip: String

        /// 域名
        public let domain: String

        /// 协议
        public let `protocol`: String

        public init(instanceId: String, ipList: [IpSegment], type: String, ip: String, domain: String, protocol: String) {
            self.instanceId = instanceId
            self.ipList = ipList
            self.type = type
            self.ip = ip
            self.domain = domain
            self.protocol = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ipList = "IpList"
            case type = "Type"
            case ip = "Ip"
            case domain = "Domain"
            case `protocol` = "Protocol"
        }
    }

    /// CreateCcBlackWhiteIpList返回参数结构体
    public struct CreateCcBlackWhiteIpListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新建CC四层黑白名单
    @inlinable @discardableResult
    public func createCcBlackWhiteIpList(_ input: CreateCcBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCcBlackWhiteIpListResponse> {
        self.client.execute(action: "CreateCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建CC四层黑白名单
    @inlinable @discardableResult
    public func createCcBlackWhiteIpList(_ input: CreateCcBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCcBlackWhiteIpListResponse {
        try await self.client.execute(action: "CreateCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建CC四层黑白名单
    @inlinable @discardableResult
    public func createCcBlackWhiteIpList(instanceId: String, ipList: [IpSegment], type: String, ip: String, domain: String, protocol: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCcBlackWhiteIpListResponse> {
        self.createCcBlackWhiteIpList(.init(instanceId: instanceId, ipList: ipList, type: type, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 新建CC四层黑白名单
    @inlinable @discardableResult
    public func createCcBlackWhiteIpList(instanceId: String, ipList: [IpSegment], type: String, ip: String, domain: String, protocol: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCcBlackWhiteIpListResponse {
        try await self.createCcBlackWhiteIpList(.init(instanceId: instanceId, ipList: ipList, type: type, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }
}
