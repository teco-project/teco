//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Antiddos {
    /// CreateCcGeoIPBlockConfig请求参数结构体
    public struct CreateCcGeoIPBlockConfigRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// ip地址
        public let ip: String

        /// 域名
        public let domain: String

        /// 协议类型
        public let `protocol`: String

        /// CC区域封禁配置
        public let ccGeoIPBlockConfig: CcGeoIPBlockConfig

        public init(instanceId: String, ip: String, domain: String, protocol: String, ccGeoIPBlockConfig: CcGeoIPBlockConfig) {
            self.instanceId = instanceId
            self.ip = ip
            self.domain = domain
            self.`protocol` = `protocol`
            self.ccGeoIPBlockConfig = ccGeoIPBlockConfig
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ip = "IP"
            case domain = "Domain"
            case `protocol` = "Protocol"
            case ccGeoIPBlockConfig = "CcGeoIPBlockConfig"
        }
    }

    /// CreateCcGeoIPBlockConfig返回参数结构体
    public struct CreateCcGeoIPBlockConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新建cc防护的地域封禁配置
    @inlinable @discardableResult
    public func createCcGeoIPBlockConfig(_ input: CreateCcGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCcGeoIPBlockConfigResponse> {
        self.client.execute(action: "CreateCcGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建cc防护的地域封禁配置
    @inlinable @discardableResult
    public func createCcGeoIPBlockConfig(_ input: CreateCcGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCcGeoIPBlockConfigResponse {
        try await self.client.execute(action: "CreateCcGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建cc防护的地域封禁配置
    @inlinable @discardableResult
    public func createCcGeoIPBlockConfig(instanceId: String, ip: String, domain: String, protocol: String, ccGeoIPBlockConfig: CcGeoIPBlockConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCcGeoIPBlockConfigResponse> {
        self.createCcGeoIPBlockConfig(CreateCcGeoIPBlockConfigRequest(instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`, ccGeoIPBlockConfig: ccGeoIPBlockConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 新建cc防护的地域封禁配置
    @inlinable @discardableResult
    public func createCcGeoIPBlockConfig(instanceId: String, ip: String, domain: String, protocol: String, ccGeoIPBlockConfig: CcGeoIPBlockConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCcGeoIPBlockConfigResponse {
        try await self.createCcGeoIPBlockConfig(CreateCcGeoIPBlockConfigRequest(instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`, ccGeoIPBlockConfig: ccGeoIPBlockConfig), region: region, logger: logger, on: eventLoop)
    }
}
