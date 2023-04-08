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

extension Kms {
    /// DisableWhiteBoxKeys请求参数结构体
    public struct DisableWhiteBoxKeysRequest: TCRequestModel {
        /// 白盒密钥的全局唯一标识符列表。注意：要确保所有提供的KeyId是格式有效的，没有重复，个数不超过50个，并且都是有效存在的。
        public let keyIds: [String]

        public init(keyIds: [String]) {
            self.keyIds = keyIds
        }

        enum CodingKeys: String, CodingKey {
            case keyIds = "KeyIds"
        }
    }

    /// DisableWhiteBoxKeys返回参数结构体
    public struct DisableWhiteBoxKeysResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量禁用白盒密钥
    @inlinable @discardableResult
    public func disableWhiteBoxKeys(_ input: DisableWhiteBoxKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableWhiteBoxKeysResponse> {
        self.client.execute(action: "DisableWhiteBoxKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量禁用白盒密钥
    @inlinable @discardableResult
    public func disableWhiteBoxKeys(_ input: DisableWhiteBoxKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableWhiteBoxKeysResponse {
        try await self.client.execute(action: "DisableWhiteBoxKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量禁用白盒密钥
    @inlinable @discardableResult
    public func disableWhiteBoxKeys(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableWhiteBoxKeysResponse> {
        self.disableWhiteBoxKeys(.init(keyIds: keyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量禁用白盒密钥
    @inlinable @discardableResult
    public func disableWhiteBoxKeys(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableWhiteBoxKeysResponse {
        try await self.disableWhiteBoxKeys(.init(keyIds: keyIds), region: region, logger: logger, on: eventLoop)
    }
}
