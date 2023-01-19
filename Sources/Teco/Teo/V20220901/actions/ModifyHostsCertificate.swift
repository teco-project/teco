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
    /// ModifyHostsCertificate请求参数结构体
    public struct ModifyHostsCertificateRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 本次变更的域名列表。
        public let hosts: [String]

        /// 证书信息, 只需要传入 CertId 即可, 如果为空, 则使用默认证书。
        public let serverCertInfo: [ServerCertInfo]?

        /// 托管类型，取值有：
        /// <li>apply：托管EO；</li>
        /// <li>none：不托管EO；</li>不填，默认取值为apply。
        public let applyType: String?

        public init(zoneId: String, hosts: [String], serverCertInfo: [ServerCertInfo]? = nil, applyType: String? = nil) {
            self.zoneId = zoneId
            self.hosts = hosts
            self.serverCertInfo = serverCertInfo
            self.applyType = applyType
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case hosts = "Hosts"
            case serverCertInfo = "ServerCertInfo"
            case applyType = "ApplyType"
        }
    }

    /// ModifyHostsCertificate返回参数结构体
    public struct ModifyHostsCertificateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改域名证书
    ///
    /// 用于修改域名证书
    @inlinable
    public func modifyHostsCertificate(_ input: ModifyHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostsCertificateResponse> {
        self.client.execute(action: "ModifyHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改域名证书
    ///
    /// 用于修改域名证书
    @inlinable
    public func modifyHostsCertificate(_ input: ModifyHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostsCertificateResponse {
        try await self.client.execute(action: "ModifyHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改域名证书
    ///
    /// 用于修改域名证书
    @inlinable
    public func modifyHostsCertificate(zoneId: String, hosts: [String], serverCertInfo: [ServerCertInfo]? = nil, applyType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostsCertificateResponse> {
        self.modifyHostsCertificate(ModifyHostsCertificateRequest(zoneId: zoneId, hosts: hosts, serverCertInfo: serverCertInfo, applyType: applyType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改域名证书
    ///
    /// 用于修改域名证书
    @inlinable
    public func modifyHostsCertificate(zoneId: String, hosts: [String], serverCertInfo: [ServerCertInfo]? = nil, applyType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostsCertificateResponse {
        try await self.modifyHostsCertificate(ModifyHostsCertificateRequest(zoneId: zoneId, hosts: hosts, serverCertInfo: serverCertInfo, applyType: applyType), region: region, logger: logger, on: eventLoop)
    }
}
