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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotcloud {
    /// CreatePrivateCA请求参数结构体
    public struct CreatePrivateCARequest: TCRequestModel {
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

    /// CreatePrivateCA返回参数结构体
    public struct CreatePrivateCAResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建私有CA证书
    @inlinable @discardableResult
    public func createPrivateCA(_ input: CreatePrivateCARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrivateCAResponse> {
        self.client.execute(action: "CreatePrivateCA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建私有CA证书
    @inlinable @discardableResult
    public func createPrivateCA(_ input: CreatePrivateCARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateCAResponse {
        try await self.client.execute(action: "CreatePrivateCA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建私有CA证书
    @inlinable @discardableResult
    public func createPrivateCA(certName: String, certText: String, verifyCertText: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrivateCAResponse> {
        self.createPrivateCA(.init(certName: certName, certText: certText, verifyCertText: verifyCertText), region: region, logger: logger, on: eventLoop)
    }

    /// 创建私有CA证书
    @inlinable @discardableResult
    public func createPrivateCA(certName: String, certText: String, verifyCertText: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateCAResponse {
        try await self.createPrivateCA(.init(certName: certName, certText: certText, verifyCertText: verifyCertText), region: region, logger: logger, on: eventLoop)
    }
}
