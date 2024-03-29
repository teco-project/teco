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

extension Ds {
    /// DeleteSeal请求参数结构体
    public struct DeleteSealRequest: TCRequest {
        /// 模块名SealMng
        public let module: String

        /// 操作名DeleteSeal
        public let operation: String

        /// 帐号ID
        public let accountResId: String

        /// 签章ID
        public let sealResId: String

        public init(module: String, operation: String, accountResId: String, sealResId: String) {
            self.module = module
            self.operation = operation
            self.accountResId = accountResId
            self.sealResId = sealResId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case accountResId = "AccountResId"
            case sealResId = "SealResId"
        }
    }

    /// DeleteSeal返回参数结构体
    public struct DeleteSealResponse: TCResponse {
        /// 签章ID
        public let sealResId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sealResId = "SealResId"
            case requestId = "RequestId"
        }
    }

    /// 删除签章
    ///
    /// 删除印章接口，删除指定账号的某个印章
    @inlinable
    public func deleteSeal(_ input: DeleteSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSealResponse> {
        self.client.execute(action: "DeleteSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除签章
    ///
    /// 删除印章接口，删除指定账号的某个印章
    @inlinable
    public func deleteSeal(_ input: DeleteSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSealResponse {
        try await self.client.execute(action: "DeleteSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除签章
    ///
    /// 删除印章接口，删除指定账号的某个印章
    @inlinable
    public func deleteSeal(module: String, operation: String, accountResId: String, sealResId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSealResponse> {
        self.deleteSeal(.init(module: module, operation: operation, accountResId: accountResId, sealResId: sealResId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除签章
    ///
    /// 删除印章接口，删除指定账号的某个印章
    @inlinable
    public func deleteSeal(module: String, operation: String, accountResId: String, sealResId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSealResponse {
        try await self.deleteSeal(.init(module: module, operation: operation, accountResId: accountResId, sealResId: sealResId), region: region, logger: logger, on: eventLoop)
    }
}
