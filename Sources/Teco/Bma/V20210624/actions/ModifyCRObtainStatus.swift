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

extension Bma {
    /// ModifyCRObtainStatus请求参数结构体
    public struct ModifyCRObtainStatusRequest: TCRequestModel {
        /// 侵权ID
        public let tortId: Int64

        /// 取证类型：1-网页取证 2-过程取证(暂不提供)
        public let obtainType: Int64

        /// 过程取证的取证时长，单位分钟，范围0-120
        public let obtainDuration: Int64

        /// 取证结果回调地址
        public let obtainUrl: String?

        public init(tortId: Int64, obtainType: Int64, obtainDuration: Int64, obtainUrl: String? = nil) {
            self.tortId = tortId
            self.obtainType = obtainType
            self.obtainDuration = obtainDuration
            self.obtainUrl = obtainUrl
        }

        enum CodingKeys: String, CodingKey {
            case tortId = "TortId"
            case obtainType = "ObtainType"
            case obtainDuration = "ObtainDuration"
            case obtainUrl = "ObtainUrl"
        }
    }

    /// ModifyCRObtainStatus返回参数结构体
    public struct ModifyCRObtainStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取证申请
    @inlinable @discardableResult
    public func modifyCRObtainStatus(_ input: ModifyCRObtainStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCRObtainStatusResponse> {
        self.client.execute(action: "ModifyCRObtainStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取证申请
    @inlinable @discardableResult
    public func modifyCRObtainStatus(_ input: ModifyCRObtainStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCRObtainStatusResponse {
        try await self.client.execute(action: "ModifyCRObtainStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取证申请
    @inlinable @discardableResult
    public func modifyCRObtainStatus(tortId: Int64, obtainType: Int64, obtainDuration: Int64, obtainUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCRObtainStatusResponse> {
        self.modifyCRObtainStatus(.init(tortId: tortId, obtainType: obtainType, obtainDuration: obtainDuration, obtainUrl: obtainUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 取证申请
    @inlinable @discardableResult
    public func modifyCRObtainStatus(tortId: Int64, obtainType: Int64, obtainDuration: Int64, obtainUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCRObtainStatusResponse {
        try await self.modifyCRObtainStatus(.init(tortId: tortId, obtainType: obtainType, obtainDuration: obtainDuration, obtainUrl: obtainUrl), region: region, logger: logger, on: eventLoop)
    }
}
