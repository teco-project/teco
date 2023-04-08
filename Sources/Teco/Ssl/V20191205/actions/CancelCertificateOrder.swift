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
    /// CancelCertificateOrder请求参数结构体
    public struct CancelCertificateOrderRequest: TCRequestModel {
        /// 证书 ID。
        public let certificateId: String

        public init(certificateId: String) {
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
        }
    }

    /// CancelCertificateOrder返回参数结构体
    public struct CancelCertificateOrderResponse: TCResponseModel {
        /// 取消订单成功的证书 ID。
        public let certificateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case requestId = "RequestId"
        }
    }

    /// 取消证书订单
    ///
    /// 取消证书订单。
    @inlinable
    public func cancelCertificateOrder(_ input: CancelCertificateOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelCertificateOrderResponse> {
        self.client.execute(action: "CancelCertificateOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消证书订单
    ///
    /// 取消证书订单。
    @inlinable
    public func cancelCertificateOrder(_ input: CancelCertificateOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelCertificateOrderResponse {
        try await self.client.execute(action: "CancelCertificateOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消证书订单
    ///
    /// 取消证书订单。
    @inlinable
    public func cancelCertificateOrder(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelCertificateOrderResponse> {
        self.cancelCertificateOrder(.init(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消证书订单
    ///
    /// 取消证书订单。
    @inlinable
    public func cancelCertificateOrder(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelCertificateOrderResponse {
        try await self.cancelCertificateOrder(.init(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }
}
