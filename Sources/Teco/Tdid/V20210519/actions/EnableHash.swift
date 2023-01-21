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

extension Tdid {
    /// EnableHash请求参数结构体
    public struct EnableHashRequest: TCRequestModel {
        /// 合约CNS地址
        public let hash: String

        public init(hash: String) {
            self.hash = hash
        }

        enum CodingKeys: String, CodingKey {
            case hash = "Hash"
        }
    }

    /// EnableHash返回参数结构体
    public struct EnableHashResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用合约
    @inlinable @discardableResult
    public func enableHash(_ input: EnableHashRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableHashResponse> {
        self.client.execute(action: "EnableHash", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用合约
    @inlinable @discardableResult
    public func enableHash(_ input: EnableHashRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableHashResponse {
        try await self.client.execute(action: "EnableHash", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用合约
    @inlinable @discardableResult
    public func enableHash(hash: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableHashResponse> {
        self.enableHash(EnableHashRequest(hash: hash), region: region, logger: logger, on: eventLoop)
    }

    /// 启用合约
    @inlinable @discardableResult
    public func enableHash(hash: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableHashResponse {
        try await self.enableHash(EnableHashRequest(hash: hash), region: region, logger: logger, on: eventLoop)
    }
}
