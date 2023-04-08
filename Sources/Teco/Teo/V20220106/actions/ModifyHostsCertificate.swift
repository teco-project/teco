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
    /// ModifyHostsCertificate请求参数结构体
    public struct ModifyHostsCertificateRequest: TCRequestModel {
        /// Zone ID
        public let zoneId: String

        /// 本次变更的域名
        public let hosts: [String]

        /// 证书信息, 只需要传入 CertId 即可, 如果为空, 则使用默认证书
        public let certInfo: [ServerCertInfo]?

        public init(zoneId: String, hosts: [String], certInfo: [ServerCertInfo]? = nil) {
            self.zoneId = zoneId
            self.hosts = hosts
            self.certInfo = certInfo
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case hosts = "Hosts"
            case certInfo = "CertInfo"
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
    @inlinable @discardableResult
    public func modifyHostsCertificate(_ input: ModifyHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostsCertificateResponse> {
        self.client.execute(action: "ModifyHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改域名证书
    ///
    /// 用于修改域名证书
    @inlinable @discardableResult
    public func modifyHostsCertificate(_ input: ModifyHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostsCertificateResponse {
        try await self.client.execute(action: "ModifyHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改域名证书
    ///
    /// 用于修改域名证书
    @inlinable @discardableResult
    public func modifyHostsCertificate(zoneId: String, hosts: [String], certInfo: [ServerCertInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostsCertificateResponse> {
        self.modifyHostsCertificate(.init(zoneId: zoneId, hosts: hosts, certInfo: certInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 修改域名证书
    ///
    /// 用于修改域名证书
    @inlinable @discardableResult
    public func modifyHostsCertificate(zoneId: String, hosts: [String], certInfo: [ServerCertInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostsCertificateResponse {
        try await self.modifyHostsCertificate(.init(zoneId: zoneId, hosts: hosts, certInfo: certInfo), region: region, logger: logger, on: eventLoop)
    }
}
