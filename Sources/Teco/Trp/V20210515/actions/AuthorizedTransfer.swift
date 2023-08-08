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

extension Trp {
    /// AuthorizedTransfer请求参数结构体
    public struct AuthorizedTransferRequest: TCRequestModel {
        /// 业务加密入参。
        public let businessSecurityData: InputEncryptData

        public init(businessSecurityData: InputEncryptData) {
            self.businessSecurityData = businessSecurityData
        }

        enum CodingKeys: String, CodingKey {
            case businessSecurityData = "BusinessSecurityData"
        }
    }

    /// AuthorizedTransfer返回参数结构体
    public struct AuthorizedTransferResponse: TCResponseModel {
        /// 业务出参。
        public let data: OutputAuthorizedTransfer

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 授权数据上报接口
    ///
    /// 接收客户侧的用户已授权的号码。
    @inlinable
    public func authorizedTransfer(_ input: AuthorizedTransferRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuthorizedTransferResponse> {
        self.client.execute(action: "AuthorizedTransfer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 授权数据上报接口
    ///
    /// 接收客户侧的用户已授权的号码。
    @inlinable
    public func authorizedTransfer(_ input: AuthorizedTransferRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuthorizedTransferResponse {
        try await self.client.execute(action: "AuthorizedTransfer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 授权数据上报接口
    ///
    /// 接收客户侧的用户已授权的号码。
    @inlinable
    public func authorizedTransfer(businessSecurityData: InputEncryptData, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuthorizedTransferResponse> {
        self.authorizedTransfer(.init(businessSecurityData: businessSecurityData), region: region, logger: logger, on: eventLoop)
    }

    /// 授权数据上报接口
    ///
    /// 接收客户侧的用户已授权的号码。
    @inlinable
    public func authorizedTransfer(businessSecurityData: InputEncryptData, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuthorizedTransferResponse {
        try await self.authorizedTransfer(.init(businessSecurityData: businessSecurityData), region: region, logger: logger, on: eventLoop)
    }
}
