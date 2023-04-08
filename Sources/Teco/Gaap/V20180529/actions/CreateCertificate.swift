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
    /// CreateCertificate请求参数结构体
    public struct CreateCertificateRequest: TCRequestModel {
        /// 证书类型。其中：
        /// 0，表示基础认证配置；
        /// 1，表示客户端CA证书；
        /// 2，服务器SSL证书；
        /// 3，表示源站CA证书；
        /// 4，表示通道SSL证书。
        public let certificateType: Int64

        /// 证书内容。采用url编码。其中：
        /// 当证书类型为基础认证配置时，该参数填写用户名/密码对。格式：“用户名：密码”，例如：root:FSGdT。其中密码使用htpasswd或者openssl，例如：openssl passwd -crypt 123456。
        /// 当证书类型为CA/SSL证书时，该参数填写证书内容，格式为pem。
        public let certificateContent: String

        /// 证书名称
        public let certificateAlias: String?

        /// 密钥内容。采用url编码。仅当证书类型为SSL证书时，需要填写该参数。格式为pem。
        public let certificateKey: String?

        public init(certificateType: Int64, certificateContent: String, certificateAlias: String? = nil, certificateKey: String? = nil) {
            self.certificateType = certificateType
            self.certificateContent = certificateContent
            self.certificateAlias = certificateAlias
            self.certificateKey = certificateKey
        }

        enum CodingKeys: String, CodingKey {
            case certificateType = "CertificateType"
            case certificateContent = "CertificateContent"
            case certificateAlias = "CertificateAlias"
            case certificateKey = "CertificateKey"
        }
    }

    /// CreateCertificate返回参数结构体
    public struct CreateCertificateResponse: TCResponseModel {
        /// 证书ID
        public let certificateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case requestId = "RequestId"
        }
    }

    /// 创建证书
    ///
    /// 本接口（CreateCertificate）用于创建Gaap相关证书和配置文件，包括基础认证配置文件，客户端CA证书，服务器SSL证书，Gaap SSL证书以及源站CA证书。
    @inlinable
    public func createCertificate(_ input: CreateCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCertificateResponse> {
        self.client.execute(action: "CreateCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建证书
    ///
    /// 本接口（CreateCertificate）用于创建Gaap相关证书和配置文件，包括基础认证配置文件，客户端CA证书，服务器SSL证书，Gaap SSL证书以及源站CA证书。
    @inlinable
    public func createCertificate(_ input: CreateCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCertificateResponse {
        try await self.client.execute(action: "CreateCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建证书
    ///
    /// 本接口（CreateCertificate）用于创建Gaap相关证书和配置文件，包括基础认证配置文件，客户端CA证书，服务器SSL证书，Gaap SSL证书以及源站CA证书。
    @inlinable
    public func createCertificate(certificateType: Int64, certificateContent: String, certificateAlias: String? = nil, certificateKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCertificateResponse> {
        self.createCertificate(.init(certificateType: certificateType, certificateContent: certificateContent, certificateAlias: certificateAlias, certificateKey: certificateKey), region: region, logger: logger, on: eventLoop)
    }

    /// 创建证书
    ///
    /// 本接口（CreateCertificate）用于创建Gaap相关证书和配置文件，包括基础认证配置文件，客户端CA证书，服务器SSL证书，Gaap SSL证书以及源站CA证书。
    @inlinable
    public func createCertificate(certificateType: Int64, certificateContent: String, certificateAlias: String? = nil, certificateKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCertificateResponse {
        try await self.createCertificate(.init(certificateType: certificateType, certificateContent: certificateContent, certificateAlias: certificateAlias, certificateKey: certificateKey), region: region, logger: logger, on: eventLoop)
    }
}
