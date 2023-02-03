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
    /// CommitCertificateInformation请求参数结构体
    public struct CommitCertificateInformationRequest: TCRequestModel {
        /// 证书 ID。
        public let certificateId: String

        public init(certificateId: String) {
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
        }
    }

    /// CommitCertificateInformation返回参数结构体
    public struct CommitCertificateInformationResponse: TCResponseModel {
        /// CA机构侧订单号。
        public let orderId: String

        /// 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        public let status: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 提交证书订单
    ///
    /// 提交证书订单。
    @inlinable
    public func commitCertificateInformation(_ input: CommitCertificateInformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitCertificateInformationResponse> {
        self.client.execute(action: "CommitCertificateInformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交证书订单
    ///
    /// 提交证书订单。
    @inlinable
    public func commitCertificateInformation(_ input: CommitCertificateInformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitCertificateInformationResponse {
        try await self.client.execute(action: "CommitCertificateInformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交证书订单
    ///
    /// 提交证书订单。
    @inlinable
    public func commitCertificateInformation(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitCertificateInformationResponse> {
        let input = CommitCertificateInformationRequest(certificateId: certificateId)
        return self.client.execute(action: "CommitCertificateInformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交证书订单
    ///
    /// 提交证书订单。
    @inlinable
    public func commitCertificateInformation(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitCertificateInformationResponse {
        let input = CommitCertificateInformationRequest(certificateId: certificateId)
        return try await self.client.execute(action: "CommitCertificateInformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
