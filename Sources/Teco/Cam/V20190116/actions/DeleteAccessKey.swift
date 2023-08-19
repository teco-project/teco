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

extension Cam {
    /// DeleteAccessKey请求参数结构体
    public struct DeleteAccessKeyRequest: TCRequest {
        /// 指定需要删除的AccessKeyId
        public let accessKeyId: String

        /// 指定用户Uin，不填默认为当前用户删除访问密钥
        public let targetUin: UInt64?

        public init(accessKeyId: String, targetUin: UInt64? = nil) {
            self.accessKeyId = accessKeyId
            self.targetUin = targetUin
        }

        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
            case targetUin = "TargetUin"
        }
    }

    /// DeleteAccessKey返回参数结构体
    public struct DeleteAccessKeyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除访问密钥
    ///
    /// 为CAM用户删除访问密钥。
    /// 此接口属于高风险操作，删除密钥后不可恢复，腾讯云将永久拒绝此密钥的所有请求，请谨慎使用。
    @inlinable @discardableResult
    public func deleteAccessKey(_ input: DeleteAccessKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessKeyResponse> {
        self.client.execute(action: "DeleteAccessKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除访问密钥
    ///
    /// 为CAM用户删除访问密钥。
    /// 此接口属于高风险操作，删除密钥后不可恢复，腾讯云将永久拒绝此密钥的所有请求，请谨慎使用。
    @inlinable @discardableResult
    public func deleteAccessKey(_ input: DeleteAccessKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessKeyResponse {
        try await self.client.execute(action: "DeleteAccessKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除访问密钥
    ///
    /// 为CAM用户删除访问密钥。
    /// 此接口属于高风险操作，删除密钥后不可恢复，腾讯云将永久拒绝此密钥的所有请求，请谨慎使用。
    @inlinable @discardableResult
    public func deleteAccessKey(accessKeyId: String, targetUin: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessKeyResponse> {
        self.deleteAccessKey(.init(accessKeyId: accessKeyId, targetUin: targetUin), region: region, logger: logger, on: eventLoop)
    }

    /// 删除访问密钥
    ///
    /// 为CAM用户删除访问密钥。
    /// 此接口属于高风险操作，删除密钥后不可恢复，腾讯云将永久拒绝此密钥的所有请求，请谨慎使用。
    @inlinable @discardableResult
    public func deleteAccessKey(accessKeyId: String, targetUin: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessKeyResponse {
        try await self.deleteAccessKey(.init(accessKeyId: accessKeyId, targetUin: targetUin), region: region, logger: logger, on: eventLoop)
    }
}
