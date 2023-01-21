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

extension Gaap {
    /// DeleteCertificate请求参数结构体
    public struct DeleteCertificateRequest: TCRequestModel {
        /// 需要删除的证书ID。
        public let certificateId: String

        public init(certificateId: String) {
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
        }
    }

    /// DeleteCertificate返回参数结构体
    public struct DeleteCertificateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCertificate）用于删除证书。
    @inlinable @discardableResult
    public func deleteCertificate(_ input: DeleteCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCertificateResponse> {
        self.client.execute(action: "DeleteCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCertificate）用于删除证书。
    @inlinable @discardableResult
    public func deleteCertificate(_ input: DeleteCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCertificateResponse {
        try await self.client.execute(action: "DeleteCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCertificate）用于删除证书。
    @inlinable @discardableResult
    public func deleteCertificate(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCertificateResponse> {
        self.deleteCertificate(DeleteCertificateRequest(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCertificate）用于删除证书。
    @inlinable @discardableResult
    public func deleteCertificate(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCertificateResponse {
        try await self.deleteCertificate(DeleteCertificateRequest(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }
}
