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

extension Kms {
    /// GenerateRandom请求参数结构体
    public struct GenerateRandomRequest: TCRequest {
        /// 生成的随机数的长度。最小值为1， 最大值为1024。
        public let numberOfBytes: UInt64

        public init(numberOfBytes: UInt64) {
            self.numberOfBytes = numberOfBytes
        }

        enum CodingKeys: String, CodingKey {
            case numberOfBytes = "NumberOfBytes"
        }
    }

    /// GenerateRandom返回参数结构体
    public struct GenerateRandomResponse: TCResponse {
        /// 生成的随机数的明文，该明文使用base64编码，用户需要使用base64解码得到明文。
        public let plaintext: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case plaintext = "Plaintext"
            case requestId = "RequestId"
        }
    }

    /// 随机数生成接口
    ///
    /// 随机数生成接口。
    @inlinable
    public func generateRandom(_ input: GenerateRandomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateRandomResponse> {
        self.client.execute(action: "GenerateRandom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 随机数生成接口
    ///
    /// 随机数生成接口。
    @inlinable
    public func generateRandom(_ input: GenerateRandomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateRandomResponse {
        try await self.client.execute(action: "GenerateRandom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 随机数生成接口
    ///
    /// 随机数生成接口。
    @inlinable
    public func generateRandom(numberOfBytes: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateRandomResponse> {
        self.generateRandom(.init(numberOfBytes: numberOfBytes), region: region, logger: logger, on: eventLoop)
    }

    /// 随机数生成接口
    ///
    /// 随机数生成接口。
    @inlinable
    public func generateRandom(numberOfBytes: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateRandomResponse {
        try await self.generateRandom(.init(numberOfBytes: numberOfBytes), region: region, logger: logger, on: eventLoop)
    }
}
