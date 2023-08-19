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

extension Gaap {
    /// ModifyDomain请求参数结构体
    public struct ModifyDomainRequest: TCRequest {
        /// 7层监听器ID
        public let listenerId: String

        /// 修改前的域名信息
        public let oldDomain: String

        /// 修改后的域名信息
        public let newDomain: String

        /// 服务器SSL证书ID，仅适用于version3.0的通道。其中：
        /// 不带该字段时，表示使用原证书；
        /// 携带该字段时并且CertificateId=default，表示使用监听器证书；
        /// 其他情况，使用该CertificateId指定的证书。
        public let certificateId: String?

        /// 客户端CA证书ID，仅适用于version3.0的通道。其中：
        /// 不带该字段和PolyClientCertificateIds时，表示使用原证书；
        /// 携带该字段时并且ClientCertificateId=default，表示使用监听器证书；
        /// 其他情况，使用该ClientCertificateId或PolyClientCertificateIds指定的证书。
        public let clientCertificateId: String?

        /// 客户端CA证书ID，仅适用于version3.0的通道。其中：
        /// 不带该字段和ClientCertificateId时，表示使用原证书；
        /// 携带该字段时并且ClientCertificateId=default，表示使用监听器证书；
        /// 其他情况，使用该ClientCertificateId或PolyClientCertificateIds指定的证书。
        public let polyClientCertificateIds: [String]?

        public init(listenerId: String, oldDomain: String, newDomain: String, certificateId: String? = nil, clientCertificateId: String? = nil, polyClientCertificateIds: [String]? = nil) {
            self.listenerId = listenerId
            self.oldDomain = oldDomain
            self.newDomain = newDomain
            self.certificateId = certificateId
            self.clientCertificateId = clientCertificateId
            self.polyClientCertificateIds = polyClientCertificateIds
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case oldDomain = "OldDomain"
            case newDomain = "NewDomain"
            case certificateId = "CertificateId"
            case clientCertificateId = "ClientCertificateId"
            case polyClientCertificateIds = "PolyClientCertificateIds"
        }
    }

    /// ModifyDomain返回参数结构体
    public struct ModifyDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新监听器转发规则域名
    ///
    /// 本接口（ModifyDomain）用于监听器下的域名。当通道版本为3.0时，支持对该域名所对应的证书修改。
    @inlinable @discardableResult
    public func modifyDomain(_ input: ModifyDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainResponse> {
        self.client.execute(action: "ModifyDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新监听器转发规则域名
    ///
    /// 本接口（ModifyDomain）用于监听器下的域名。当通道版本为3.0时，支持对该域名所对应的证书修改。
    @inlinable @discardableResult
    public func modifyDomain(_ input: ModifyDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainResponse {
        try await self.client.execute(action: "ModifyDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新监听器转发规则域名
    ///
    /// 本接口（ModifyDomain）用于监听器下的域名。当通道版本为3.0时，支持对该域名所对应的证书修改。
    @inlinable @discardableResult
    public func modifyDomain(listenerId: String, oldDomain: String, newDomain: String, certificateId: String? = nil, clientCertificateId: String? = nil, polyClientCertificateIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainResponse> {
        self.modifyDomain(.init(listenerId: listenerId, oldDomain: oldDomain, newDomain: newDomain, certificateId: certificateId, clientCertificateId: clientCertificateId, polyClientCertificateIds: polyClientCertificateIds), region: region, logger: logger, on: eventLoop)
    }

    /// 更新监听器转发规则域名
    ///
    /// 本接口（ModifyDomain）用于监听器下的域名。当通道版本为3.0时，支持对该域名所对应的证书修改。
    @inlinable @discardableResult
    public func modifyDomain(listenerId: String, oldDomain: String, newDomain: String, certificateId: String? = nil, clientCertificateId: String? = nil, polyClientCertificateIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainResponse {
        try await self.modifyDomain(.init(listenerId: listenerId, oldDomain: oldDomain, newDomain: newDomain, certificateId: certificateId, clientCertificateId: clientCertificateId, polyClientCertificateIds: polyClientCertificateIds), region: region, logger: logger, on: eventLoop)
    }
}
