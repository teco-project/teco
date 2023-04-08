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

import TecoCore

extension Live {
    /// ModifyLiveDomainCertBindings请求参数结构体
    public struct ModifyLiveDomainCertBindingsRequest: TCRequestModel {
        /// 要绑定证书的播放域名/状态 信息列表。
        /// 如果CloudCertId和证书公钥私钥对均不传，且域名列表已有绑定规则，只批量更新域名https规则的启用状态，并把未上传至腾讯云ssl的已有自有证书上传。
        public let domainInfos: [LiveCertDomainInfo]

        /// 腾讯云ssl的证书Id。
        /// 见 https://cloud.tencent.com/document/api/400/41665
        public let cloudCertId: String?

        /// 证书公钥。
        /// CloudCertId和公钥私钥对二选一，若CloudCertId将会舍弃公钥和私钥参数，否则将自动先把公钥私钥对上传至ssl新建证书，并使用上传成功后返回的CloudCertId。
        public let certificatePublicKey: String?

        /// 证书私钥。
        /// CloudCertId和公钥私钥对二选一，若传CloudCertId将会舍弃公钥和私钥参数，否则将自动先把公钥私钥对上传至ssl新建证书，并使用上传成功后返回的CloudCertId。
        public let certificatePrivateKey: String?

        /// 上传至ssl证书中心的备注信息，只有新建证书时有效。传CloudCertId时会忽略。
        public let certificateAlias: String?

        public init(domainInfos: [LiveCertDomainInfo], cloudCertId: String? = nil, certificatePublicKey: String? = nil, certificatePrivateKey: String? = nil, certificateAlias: String? = nil) {
            self.domainInfos = domainInfos
            self.cloudCertId = cloudCertId
            self.certificatePublicKey = certificatePublicKey
            self.certificatePrivateKey = certificatePrivateKey
            self.certificateAlias = certificateAlias
        }

        enum CodingKeys: String, CodingKey {
            case domainInfos = "DomainInfos"
            case cloudCertId = "CloudCertId"
            case certificatePublicKey = "CertificatePublicKey"
            case certificatePrivateKey = "CertificatePrivateKey"
            case certificateAlias = "CertificateAlias"
        }
    }

    /// ModifyLiveDomainCertBindings返回参数结构体
    public struct ModifyLiveDomainCertBindingsResponse: TCResponseModel {
        /// DomainNames 入参中，与证书不匹配的域名列表，将会跳过处理。
        public let mismatchedDomainNames: [String]

        /// 操作失败的域名及错误码，错误信息，包括MismatchedDomainNames中的域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errors: [BatchDomainOperateErrors]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mismatchedDomainNames = "MismatchedDomainNames"
            case errors = "Errors"
            case requestId = "RequestId"
        }
    }

    /// 批量绑定证书对应的播放域名
    ///
    /// 批量绑定证书对应的播放域名，并更新启用状态。
    /// 新建自有证书将自动上传至腾讯云ssl。
    @inlinable
    public func modifyLiveDomainCertBindings(_ input: ModifyLiveDomainCertBindingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveDomainCertBindingsResponse> {
        self.client.execute(action: "ModifyLiveDomainCertBindings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量绑定证书对应的播放域名
    ///
    /// 批量绑定证书对应的播放域名，并更新启用状态。
    /// 新建自有证书将自动上传至腾讯云ssl。
    @inlinable
    public func modifyLiveDomainCertBindings(_ input: ModifyLiveDomainCertBindingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveDomainCertBindingsResponse {
        try await self.client.execute(action: "ModifyLiveDomainCertBindings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量绑定证书对应的播放域名
    ///
    /// 批量绑定证书对应的播放域名，并更新启用状态。
    /// 新建自有证书将自动上传至腾讯云ssl。
    @inlinable
    public func modifyLiveDomainCertBindings(domainInfos: [LiveCertDomainInfo], cloudCertId: String? = nil, certificatePublicKey: String? = nil, certificatePrivateKey: String? = nil, certificateAlias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveDomainCertBindingsResponse> {
        self.modifyLiveDomainCertBindings(.init(domainInfos: domainInfos, cloudCertId: cloudCertId, certificatePublicKey: certificatePublicKey, certificatePrivateKey: certificatePrivateKey, certificateAlias: certificateAlias), region: region, logger: logger, on: eventLoop)
    }

    /// 批量绑定证书对应的播放域名
    ///
    /// 批量绑定证书对应的播放域名，并更新启用状态。
    /// 新建自有证书将自动上传至腾讯云ssl。
    @inlinable
    public func modifyLiveDomainCertBindings(domainInfos: [LiveCertDomainInfo], cloudCertId: String? = nil, certificatePublicKey: String? = nil, certificatePrivateKey: String? = nil, certificateAlias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveDomainCertBindingsResponse {
        try await self.modifyLiveDomainCertBindings(.init(domainInfos: domainInfos, cloudCertId: cloudCertId, certificatePublicKey: certificatePublicKey, certificatePrivateKey: certificatePrivateKey, certificateAlias: certificateAlias), region: region, logger: logger, on: eventLoop)
    }
}
