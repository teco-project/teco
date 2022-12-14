//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CreateAliasDomain请求参数结构体
    public struct CreateAliasDomainRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 别称域名名称。
        public let aliasName: String

        /// 目标域名名称。
        public let targetName: String

        /// 证书配置，取值有：
        /// <li> none：不配置；</li>
        /// <li> hosting：SSL托管证书；</li>
        /// <li> apply：申请免费证书。</li>默认取值为 none。
        public let certType: String?

        /// 当 CertType 取值为 hosting 时需填入相应证书 ID。
        public let certId: [String]?

        public init(zoneId: String, aliasName: String, targetName: String, certType: String? = nil, certId: [String]? = nil) {
            self.zoneId = zoneId
            self.aliasName = aliasName
            self.targetName = targetName
            self.certType = certType
            self.certId = certId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case aliasName = "AliasName"
            case targetName = "TargetName"
            case certType = "CertType"
            case certId = "CertId"
        }
    }

    /// CreateAliasDomain返回参数结构体
    public struct CreateAliasDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建别称域名
    ///
    /// 创建别称域名。
    @inlinable
    public func createAliasDomain(_ input: CreateAliasDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAliasDomainResponse > {
        self.client.execute(action: "CreateAliasDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建别称域名
    ///
    /// 创建别称域名。
    @inlinable
    public func createAliasDomain(_ input: CreateAliasDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAliasDomainResponse {
        try await self.client.execute(action: "CreateAliasDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建别称域名
    ///
    /// 创建别称域名。
    @inlinable
    public func createAliasDomain(zoneId: String, aliasName: String, targetName: String, certType: String? = nil, certId: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAliasDomainResponse > {
        self.createAliasDomain(CreateAliasDomainRequest(zoneId: zoneId, aliasName: aliasName, targetName: targetName, certType: certType, certId: certId), logger: logger, on: eventLoop)
    }

    /// 创建别称域名
    ///
    /// 创建别称域名。
    @inlinable
    public func createAliasDomain(zoneId: String, aliasName: String, targetName: String, certType: String? = nil, certId: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAliasDomainResponse {
        try await self.createAliasDomain(CreateAliasDomainRequest(zoneId: zoneId, aliasName: aliasName, targetName: targetName, certType: certType, certId: certId), logger: logger, on: eventLoop)
    }
}
