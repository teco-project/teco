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

import TecoCore

extension Cam {
    /// ListAccessKeys请求参数结构体
    public struct ListAccessKeysRequest: TCRequestModel {
        /// 指定用户Uin，不填默认列出当前用户访问密钥
        public let targetUin: UInt64?

        public init(targetUin: UInt64? = nil) {
            self.targetUin = targetUin
        }

        enum CodingKeys: String, CodingKey {
            case targetUin = "TargetUin"
        }
    }

    /// ListAccessKeys返回参数结构体
    public struct ListAccessKeysResponse: TCResponseModel {
        /// 访问密钥列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessKeys: [AccessKey]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessKeys = "AccessKeys"
            case requestId = "RequestId"
        }
    }

    /// 列出访问密钥
    ///
    /// 列出指定CAM用户的访问密钥
    @inlinable
    public func listAccessKeys(_ input: ListAccessKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccessKeysResponse> {
        self.client.execute(action: "ListAccessKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出访问密钥
    ///
    /// 列出指定CAM用户的访问密钥
    @inlinable
    public func listAccessKeys(_ input: ListAccessKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccessKeysResponse {
        try await self.client.execute(action: "ListAccessKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出访问密钥
    ///
    /// 列出指定CAM用户的访问密钥
    @inlinable
    public func listAccessKeys(targetUin: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccessKeysResponse> {
        self.listAccessKeys(.init(targetUin: targetUin), region: region, logger: logger, on: eventLoop)
    }

    /// 列出访问密钥
    ///
    /// 列出指定CAM用户的访问密钥
    @inlinable
    public func listAccessKeys(targetUin: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccessKeysResponse {
        try await self.listAccessKeys(.init(targetUin: targetUin), region: region, logger: logger, on: eventLoop)
    }
}
