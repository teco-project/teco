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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// ModifyUserDefaultSeal请求参数结构体
    public struct ModifyUserDefaultSealRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 用户唯一标识，需要重新指定默认印章的用户ID
        public let userId: String

        /// 重新指定的默认印章ID
        public let sealId: String

        /// 请求重新指定个人默认印章的客户端IP
        public let sourceIp: String

        public init(caller: Caller, userId: String, sealId: String, sourceIp: String) {
            self.caller = caller
            self.userId = userId
            self.sealId = sealId
            self.sourceIp = sourceIp
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case userId = "UserId"
            case sealId = "SealId"
            case sourceIp = "SourceIp"
        }
    }

    /// ModifyUserDefaultSeal返回参数结构体
    public struct ModifyUserDefaultSealResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改个人默认印章
    ///
    /// 此接口 (ModifyUserDefaultSeal) 用于重新指定个人默认印章。
    @inlinable @discardableResult
    public func modifyUserDefaultSeal(_ input: ModifyUserDefaultSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserDefaultSealResponse> {
        self.client.execute(action: "ModifyUserDefaultSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改个人默认印章
    ///
    /// 此接口 (ModifyUserDefaultSeal) 用于重新指定个人默认印章。
    @inlinable @discardableResult
    public func modifyUserDefaultSeal(_ input: ModifyUserDefaultSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserDefaultSealResponse {
        try await self.client.execute(action: "ModifyUserDefaultSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改个人默认印章
    ///
    /// 此接口 (ModifyUserDefaultSeal) 用于重新指定个人默认印章。
    @inlinable @discardableResult
    public func modifyUserDefaultSeal(caller: Caller, userId: String, sealId: String, sourceIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserDefaultSealResponse> {
        self.modifyUserDefaultSeal(.init(caller: caller, userId: userId, sealId: sealId, sourceIp: sourceIp), region: region, logger: logger, on: eventLoop)
    }

    /// 修改个人默认印章
    ///
    /// 此接口 (ModifyUserDefaultSeal) 用于重新指定个人默认印章。
    @inlinable @discardableResult
    public func modifyUserDefaultSeal(caller: Caller, userId: String, sealId: String, sourceIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserDefaultSealResponse {
        try await self.modifyUserDefaultSeal(.init(caller: caller, userId: userId, sealId: sealId, sourceIp: sourceIp), region: region, logger: logger, on: eventLoop)
    }
}
