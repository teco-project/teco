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

extension Tdid {
    /// GetCredentialStatus请求参数结构体
    public struct GetCredentialStatusRequest: TCRequest {
        /// 凭证id
        public let credentialId: String

        public init(credentialId: String) {
            self.credentialId = credentialId
        }

        enum CodingKeys: String, CodingKey {
            case credentialId = "CredentialId"
        }
    }

    /// GetCredentialStatus返回参数结构体
    public struct GetCredentialStatusResponse: TCResponse {
        /// 凭证状态信息
        public let credentialStatus: CredentialStatus

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case credentialStatus = "CredentialStatus"
            case requestId = "RequestId"
        }
    }

    /// 获取凭证链上状态
    ///
    /// 获取凭证链上状态信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCredentialStatus(_ input: GetCredentialStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialStatusResponse> {
        fatalError("'GetCredentialStatus' is no longer available.")
    }

    /// 获取凭证链上状态
    ///
    /// 获取凭证链上状态信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCredentialStatus(_ input: GetCredentialStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialStatusResponse {
        fatalError("'GetCredentialStatus' is no longer available.")
    }

    /// 获取凭证链上状态
    ///
    /// 获取凭证链上状态信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCredentialStatus(credentialId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialStatusResponse> {
        fatalError("'GetCredentialStatus' is no longer available.")
    }

    /// 获取凭证链上状态
    ///
    /// 获取凭证链上状态信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCredentialStatus(credentialId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialStatusResponse {
        fatalError("'GetCredentialStatus' is no longer available.")
    }
}
