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

extension Dlc {
    /// DescribeLakeFsInfo请求参数结构体
    public struct DescribeLakeFsInfoRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLakeFsInfo返回参数结构体
    public struct DescribeLakeFsInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询用户的托管存储信息
    @inlinable @discardableResult
    public func describeLakeFsInfo(_ input: DescribeLakeFsInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLakeFsInfoResponse> {
        self.client.execute(action: "DescribeLakeFsInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户的托管存储信息
    @inlinable @discardableResult
    public func describeLakeFsInfo(_ input: DescribeLakeFsInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLakeFsInfoResponse {
        try await self.client.execute(action: "DescribeLakeFsInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户的托管存储信息
    @inlinable @discardableResult
    public func describeLakeFsInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLakeFsInfoResponse> {
        self.describeLakeFsInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户的托管存储信息
    @inlinable @discardableResult
    public func describeLakeFsInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLakeFsInfoResponse {
        try await self.describeLakeFsInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
