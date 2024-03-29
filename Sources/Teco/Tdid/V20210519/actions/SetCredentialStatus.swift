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
    /// SetCredentialStatus请求参数结构体
    public struct SetCredentialStatusRequest: TCRequest {
        /// 凭证状态
        public let credentialStatus: CredentialStatus

        public init(credentialStatus: CredentialStatus) {
            self.credentialStatus = credentialStatus
        }

        enum CodingKeys: String, CodingKey {
            case credentialStatus = "CredentialStatus"
        }
    }

    /// SetCredentialStatus返回参数结构体
    public struct SetCredentialStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置凭证链上状态
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable @discardableResult
    public func setCredentialStatus(_ input: SetCredentialStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCredentialStatusResponse> {
        fatalError("'SetCredentialStatus' is no longer available.")
    }

    /// 设置凭证链上状态
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable @discardableResult
    public func setCredentialStatus(_ input: SetCredentialStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCredentialStatusResponse {
        fatalError("'SetCredentialStatus' is no longer available.")
    }

    /// 设置凭证链上状态
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable @discardableResult
    public func setCredentialStatus(credentialStatus: CredentialStatus, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCredentialStatusResponse> {
        fatalError("'SetCredentialStatus' is no longer available.")
    }

    /// 设置凭证链上状态
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable @discardableResult
    public func setCredentialStatus(credentialStatus: CredentialStatus, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCredentialStatusResponse {
        fatalError("'SetCredentialStatus' is no longer available.")
    }
}
