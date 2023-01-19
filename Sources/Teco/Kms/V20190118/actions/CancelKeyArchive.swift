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

extension Kms {
    /// CancelKeyArchive请求参数结构体
    public struct CancelKeyArchiveRequest: TCRequestModel {
        /// CMK唯一标识符
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// CancelKeyArchive返回参数结构体
    public struct CancelKeyArchiveResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消密钥归档
    ///
    /// 取消密钥归档，取消后密钥的状态变为Enabled。
    @inlinable
    public func cancelKeyArchive(_ input: CancelKeyArchiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelKeyArchiveResponse> {
        self.client.execute(action: "CancelKeyArchive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消密钥归档
    ///
    /// 取消密钥归档，取消后密钥的状态变为Enabled。
    @inlinable
    public func cancelKeyArchive(_ input: CancelKeyArchiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelKeyArchiveResponse {
        try await self.client.execute(action: "CancelKeyArchive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消密钥归档
    ///
    /// 取消密钥归档，取消后密钥的状态变为Enabled。
    @inlinable
    public func cancelKeyArchive(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelKeyArchiveResponse> {
        self.cancelKeyArchive(CancelKeyArchiveRequest(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消密钥归档
    ///
    /// 取消密钥归档，取消后密钥的状态变为Enabled。
    @inlinable
    public func cancelKeyArchive(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelKeyArchiveResponse {
        try await self.cancelKeyArchive(CancelKeyArchiveRequest(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
