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

extension Yunjing {
    /// TrustMaliciousRequest请求参数结构体
    public struct TrustMaliciousRequestRequest: TCRequestModel {
        /// 恶意请求记录ID。
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// TrustMaliciousRequest返回参数结构体
    public struct TrustMaliciousRequestResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 恶意请求添加信任
    ///
    /// 本接口 (TrustMaliciousRequest) 用于恶意请求添加信任。
    @inlinable @discardableResult
    public func trustMaliciousRequest(_ input: TrustMaliciousRequestRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustMaliciousRequestResponse> {
        self.client.execute(action: "TrustMaliciousRequest", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恶意请求添加信任
    ///
    /// 本接口 (TrustMaliciousRequest) 用于恶意请求添加信任。
    @inlinable @discardableResult
    public func trustMaliciousRequest(_ input: TrustMaliciousRequestRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TrustMaliciousRequestResponse {
        try await self.client.execute(action: "TrustMaliciousRequest", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恶意请求添加信任
    ///
    /// 本接口 (TrustMaliciousRequest) 用于恶意请求添加信任。
    @inlinable @discardableResult
    public func trustMaliciousRequest(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustMaliciousRequestResponse> {
        self.trustMaliciousRequest(TrustMaliciousRequestRequest(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 恶意请求添加信任
    ///
    /// 本接口 (TrustMaliciousRequest) 用于恶意请求添加信任。
    @inlinable @discardableResult
    public func trustMaliciousRequest(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TrustMaliciousRequestResponse {
        try await self.trustMaliciousRequest(TrustMaliciousRequestRequest(id: id), region: region, logger: logger, on: eventLoop)
    }
}
