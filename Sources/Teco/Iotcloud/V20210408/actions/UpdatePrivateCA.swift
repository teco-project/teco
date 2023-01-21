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

extension Iotcloud {
    /// UpdatePrivateCA请求参数结构体
    public struct UpdatePrivateCARequest: TCRequestModel {
        /// CA证书名称
        public let certName: String

        /// CA证书内容
        public let certText: String

        /// 校验CA证书的证书内容
        public let verifyCertText: String

        public init(certName: String, certText: String, verifyCertText: String) {
            self.certName = certName
            self.certText = certText
            self.verifyCertText = verifyCertText
        }

        enum CodingKeys: String, CodingKey {
            case certName = "CertName"
            case certText = "CertText"
            case verifyCertText = "VerifyCertText"
        }
    }

    /// UpdatePrivateCA返回参数结构体
    public struct UpdatePrivateCAResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新私有CA证书
    @inlinable @discardableResult
    public func updatePrivateCA(_ input: UpdatePrivateCARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePrivateCAResponse> {
        self.client.execute(action: "UpdatePrivateCA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新私有CA证书
    @inlinable @discardableResult
    public func updatePrivateCA(_ input: UpdatePrivateCARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrivateCAResponse {
        try await self.client.execute(action: "UpdatePrivateCA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新私有CA证书
    @inlinable @discardableResult
    public func updatePrivateCA(certName: String, certText: String, verifyCertText: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePrivateCAResponse> {
        self.updatePrivateCA(UpdatePrivateCARequest(certName: certName, certText: certText, verifyCertText: verifyCertText), region: region, logger: logger, on: eventLoop)
    }

    /// 更新私有CA证书
    @inlinable @discardableResult
    public func updatePrivateCA(certName: String, certText: String, verifyCertText: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrivateCAResponse {
        try await self.updatePrivateCA(UpdatePrivateCARequest(certName: certName, certText: certText, verifyCertText: verifyCertText), region: region, logger: logger, on: eventLoop)
    }
}
