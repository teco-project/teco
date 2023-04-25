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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Sslpod {
    /// CreateDomain请求参数结构体
    public struct CreateDomainRequest: TCRequestModel {
        /// 监控的服务器类型（0：web，1：smtp，2：imap，3：pops）
        public let serverType: Int64

        /// 添加的域名
        public let domain: String

        /// 添加的端口
        public let port: String

        /// 指定域名的IP
        public let ip: String?

        /// 是否开启通知告警；true：开启通知告警，false：关闭通知告警
        public let notice: Bool?

        /// 给域名添加标签，多个以逗号隔开
        public let tags: String?

        public init(serverType: Int64, domain: String, port: String, ip: String? = nil, notice: Bool? = nil, tags: String? = nil) {
            self.serverType = serverType
            self.domain = domain
            self.port = port
            self.ip = ip
            self.notice = notice
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case serverType = "ServerType"
            case domain = "Domain"
            case port = "Port"
            case ip = "IP"
            case notice = "Notice"
            case tags = "Tags"
        }
    }

    /// CreateDomain返回参数结构体
    public struct CreateDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加域名
    ///
    /// 通过域名端口添加监控
    @inlinable @discardableResult
    public func createDomain(_ input: CreateDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        self.client.execute(action: "CreateDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加域名
    ///
    /// 通过域名端口添加监控
    @inlinable @discardableResult
    public func createDomain(_ input: CreateDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        try await self.client.execute(action: "CreateDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加域名
    ///
    /// 通过域名端口添加监控
    @inlinable @discardableResult
    public func createDomain(serverType: Int64, domain: String, port: String, ip: String? = nil, notice: Bool? = nil, tags: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        self.createDomain(.init(serverType: serverType, domain: domain, port: port, ip: ip, notice: notice, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 添加域名
    ///
    /// 通过域名端口添加监控
    @inlinable @discardableResult
    public func createDomain(serverType: Int64, domain: String, port: String, ip: String? = nil, notice: Bool? = nil, tags: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        try await self.createDomain(.init(serverType: serverType, domain: domain, port: port, ip: ip, notice: notice, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
