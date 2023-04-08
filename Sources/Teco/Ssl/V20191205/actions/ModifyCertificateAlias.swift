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

extension Ssl {
    /// ModifyCertificateAlias请求参数结构体
    public struct ModifyCertificateAliasRequest: TCRequestModel {
        /// 证书 ID。
        public let certificateId: String

        /// 备注名称。
        public let alias: String?

        public init(certificateId: String, alias: String? = nil) {
            self.certificateId = certificateId
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case alias = "Alias"
        }
    }

    /// ModifyCertificateAlias返回参数结构体
    public struct ModifyCertificateAliasResponse: TCResponseModel {
        /// 修改成功的证书 ID。
        public let certificateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case requestId = "RequestId"
        }
    }

    /// 修改证书备注
    ///
    /// 用户传入证书id和备注来修改证书备注。
    @inlinable
    public func modifyCertificateAlias(_ input: ModifyCertificateAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCertificateAliasResponse> {
        self.client.execute(action: "ModifyCertificateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改证书备注
    ///
    /// 用户传入证书id和备注来修改证书备注。
    @inlinable
    public func modifyCertificateAlias(_ input: ModifyCertificateAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCertificateAliasResponse {
        try await self.client.execute(action: "ModifyCertificateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改证书备注
    ///
    /// 用户传入证书id和备注来修改证书备注。
    @inlinable
    public func modifyCertificateAlias(certificateId: String, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCertificateAliasResponse> {
        self.modifyCertificateAlias(.init(certificateId: certificateId, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 修改证书备注
    ///
    /// 用户传入证书id和备注来修改证书备注。
    @inlinable
    public func modifyCertificateAlias(certificateId: String, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCertificateAliasResponse {
        try await self.modifyCertificateAlias(.init(certificateId: certificateId, alias: alias), region: region, logger: logger, on: eventLoop)
    }
}
