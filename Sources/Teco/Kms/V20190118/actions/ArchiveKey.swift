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

extension Kms {
    /// ArchiveKey请求参数结构体
    public struct ArchiveKeyRequest: TCRequestModel {
        /// CMK唯一标识符
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// ArchiveKey返回参数结构体
    public struct ArchiveKeyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 密钥归档
    ///
    /// 对密钥进行归档，被归档的密钥只能用于解密，不能加密
    @inlinable @discardableResult
    public func archiveKey(_ input: ArchiveKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ArchiveKeyResponse> {
        self.client.execute(action: "ArchiveKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 密钥归档
    ///
    /// 对密钥进行归档，被归档的密钥只能用于解密，不能加密
    @inlinable @discardableResult
    public func archiveKey(_ input: ArchiveKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ArchiveKeyResponse {
        try await self.client.execute(action: "ArchiveKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 密钥归档
    ///
    /// 对密钥进行归档，被归档的密钥只能用于解密，不能加密
    @inlinable @discardableResult
    public func archiveKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ArchiveKeyResponse> {
        let input = ArchiveKeyRequest(keyId: keyId)
        return self.client.execute(action: "ArchiveKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 密钥归档
    ///
    /// 对密钥进行归档，被归档的密钥只能用于解密，不能加密
    @inlinable @discardableResult
    public func archiveKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ArchiveKeyResponse {
        let input = ArchiveKeyRequest(keyId: keyId)
        return try await self.client.execute(action: "ArchiveKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
