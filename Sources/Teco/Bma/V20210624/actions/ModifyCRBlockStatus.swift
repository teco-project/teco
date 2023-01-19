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

extension Bma {
    /// ModifyCRBlockStatus请求参数结构体
    public struct ModifyCRBlockStatusRequest: TCRequestModel {
        /// 侵权ID
        public let tortId: Int64

        /// 拦截结果回调地址
        public let blockUrl: String?

        public init(tortId: Int64, blockUrl: String? = nil) {
            self.tortId = tortId
            self.blockUrl = blockUrl
        }

        enum CodingKeys: String, CodingKey {
            case tortId = "TortId"
            case blockUrl = "BlockUrl"
        }
    }

    /// ModifyCRBlockStatus返回参数结构体
    public struct ModifyCRBlockStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 协查处置申请
    @inlinable
    public func modifyCRBlockStatus(_ input: ModifyCRBlockStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCRBlockStatusResponse> {
        self.client.execute(action: "ModifyCRBlockStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 协查处置申请
    @inlinable
    public func modifyCRBlockStatus(_ input: ModifyCRBlockStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCRBlockStatusResponse {
        try await self.client.execute(action: "ModifyCRBlockStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 协查处置申请
    @inlinable
    public func modifyCRBlockStatus(tortId: Int64, blockUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCRBlockStatusResponse> {
        self.modifyCRBlockStatus(ModifyCRBlockStatusRequest(tortId: tortId, blockUrl: blockUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 协查处置申请
    @inlinable
    public func modifyCRBlockStatus(tortId: Int64, blockUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCRBlockStatusResponse {
        try await self.modifyCRBlockStatus(ModifyCRBlockStatusRequest(tortId: tortId, blockUrl: blockUrl), region: region, logger: logger, on: eventLoop)
    }
}
