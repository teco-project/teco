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

extension Tdid {
    /// SetCredentialStatus请求参数结构体
    public struct SetCredentialStatusRequest: TCRequestModel {
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
    public struct SetCredentialStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置凭证链上状态
    @inlinable @discardableResult
    public func setCredentialStatus(_ input: SetCredentialStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCredentialStatusResponse> {
        self.client.execute(action: "SetCredentialStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置凭证链上状态
    @inlinable @discardableResult
    public func setCredentialStatus(_ input: SetCredentialStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCredentialStatusResponse {
        try await self.client.execute(action: "SetCredentialStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置凭证链上状态
    @inlinable @discardableResult
    public func setCredentialStatus(credentialStatus: CredentialStatus, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCredentialStatusResponse> {
        self.setCredentialStatus(.init(credentialStatus: credentialStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 设置凭证链上状态
    @inlinable @discardableResult
    public func setCredentialStatus(credentialStatus: CredentialStatus, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCredentialStatusResponse {
        try await self.setCredentialStatus(.init(credentialStatus: credentialStatus), region: region, logger: logger, on: eventLoop)
    }
}
