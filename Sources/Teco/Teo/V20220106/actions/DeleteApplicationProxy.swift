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

extension Teo {
    /// DeleteApplicationProxy请求参数结构体
    public struct DeleteApplicationProxyRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 代理ID
        public let proxyId: String

        public init(zoneId: String, proxyId: String) {
            self.zoneId = zoneId
            self.proxyId = proxyId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
        }
    }

    /// DeleteApplicationProxy返回参数结构体
    public struct DeleteApplicationProxyResponse: TCResponseModel {
        /// 代理ID
        public let proxyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case requestId = "RequestId"
        }
    }

    /// 删除应用代理
    @inlinable
    public func deleteApplicationProxy(_ input: DeleteApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationProxyResponse> {
        self.client.execute(action: "DeleteApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除应用代理
    @inlinable
    public func deleteApplicationProxy(_ input: DeleteApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationProxyResponse {
        try await self.client.execute(action: "DeleteApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除应用代理
    @inlinable
    public func deleteApplicationProxy(zoneId: String, proxyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationProxyResponse> {
        self.deleteApplicationProxy(DeleteApplicationProxyRequest(zoneId: zoneId, proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除应用代理
    @inlinable
    public func deleteApplicationProxy(zoneId: String, proxyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationProxyResponse {
        try await self.deleteApplicationProxy(DeleteApplicationProxyRequest(zoneId: zoneId, proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }
}
