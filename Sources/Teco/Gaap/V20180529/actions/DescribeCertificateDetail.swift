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

extension Gaap {
    /// DescribeCertificateDetail请求参数结构体
    public struct DescribeCertificateDetailRequest: TCRequestModel {
        /// 证书ID。
        public let certificateId: String

        public init(certificateId: String) {
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
        }
    }

    /// DescribeCertificateDetail返回参数结构体
    public struct DescribeCertificateDetailResponse: TCResponseModel {
        /// 证书详情。
        public let certificateDetail: CertificateDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateDetail = "CertificateDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询证书详情
    ///
    /// 本接口（DescribeCertificateDetail）用于查询证书详情，包括证书ID，证书名字，证书类型，证书内容以及密钥等信息。
    @inlinable
    public func describeCertificateDetail(_ input: DescribeCertificateDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCertificateDetailResponse > {
        self.client.execute(action: "DescribeCertificateDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询证书详情
    ///
    /// 本接口（DescribeCertificateDetail）用于查询证书详情，包括证书ID，证书名字，证书类型，证书内容以及密钥等信息。
    @inlinable
    public func describeCertificateDetail(_ input: DescribeCertificateDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateDetailResponse {
        try await self.client.execute(action: "DescribeCertificateDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询证书详情
    ///
    /// 本接口（DescribeCertificateDetail）用于查询证书详情，包括证书ID，证书名字，证书类型，证书内容以及密钥等信息。
    @inlinable
    public func describeCertificateDetail(certificateId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCertificateDetailResponse > {
        self.describeCertificateDetail(DescribeCertificateDetailRequest(certificateId: certificateId), logger: logger, on: eventLoop)
    }

    /// 查询证书详情
    ///
    /// 本接口（DescribeCertificateDetail）用于查询证书详情，包括证书ID，证书名字，证书类型，证书内容以及密钥等信息。
    @inlinable
    public func describeCertificateDetail(certificateId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateDetailResponse {
        try await self.describeCertificateDetail(DescribeCertificateDetailRequest(certificateId: certificateId), logger: logger, on: eventLoop)
    }
}
