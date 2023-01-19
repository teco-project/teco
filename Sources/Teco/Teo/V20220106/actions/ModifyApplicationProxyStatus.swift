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

extension Teo {
    /// ModifyApplicationProxyStatus请求参数结构体
    public struct ModifyApplicationProxyStatusRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 代理ID
        public let proxyId: String

        /// 状态
        /// offline: 停用
        /// online: 启用
        public let status: String

        public init(zoneId: String, proxyId: String, status: String) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case status = "Status"
        }
    }

    /// ModifyApplicationProxyStatus返回参数结构体
    public struct ModifyApplicationProxyStatusResponse: TCResponseModel {
        /// 代理ID
        public let proxyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case requestId = "RequestId"
        }
    }

    /// 修改应用代理的状态
    @inlinable
    public func modifyApplicationProxyStatus(_ input: ModifyApplicationProxyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyStatusResponse> {
        self.client.execute(action: "ModifyApplicationProxyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用代理的状态
    @inlinable
    public func modifyApplicationProxyStatus(_ input: ModifyApplicationProxyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyStatusResponse {
        try await self.client.execute(action: "ModifyApplicationProxyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用代理的状态
    @inlinable
    public func modifyApplicationProxyStatus(zoneId: String, proxyId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyStatusResponse> {
        self.modifyApplicationProxyStatus(ModifyApplicationProxyStatusRequest(zoneId: zoneId, proxyId: proxyId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用代理的状态
    @inlinable
    public func modifyApplicationProxyStatus(zoneId: String, proxyId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyStatusResponse {
        try await self.modifyApplicationProxyStatus(ModifyApplicationProxyStatusRequest(zoneId: zoneId, proxyId: proxyId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
