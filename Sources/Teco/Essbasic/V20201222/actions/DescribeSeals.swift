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

extension Essbasic {
    /// DescribeSeals请求参数结构体
    public struct DescribeSealsRequest: TCRequest {
        /// 调用方信息
        public let caller: Caller

        /// 印章ID列表
        public let sealIds: [String]

        /// 用户唯一标识
        public let userId: String?

        public init(caller: Caller, sealIds: [String], userId: String? = nil) {
            self.caller = caller
            self.sealIds = sealIds
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case sealIds = "SealIds"
            case userId = "UserId"
        }
    }

    /// DescribeSeals返回参数结构体
    public struct DescribeSealsResponse: TCResponse {
        /// 印章信息
        public let seals: [Seal]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case seals = "Seals"
            case requestId = "RequestId"
        }
    }

    /// 查询电子印章
    ///
    /// 此接口（DescribeSeals）用于查询指定ID的印章信息。
    @inlinable
    public func describeSeals(_ input: DescribeSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSealsResponse> {
        self.client.execute(action: "DescribeSeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询电子印章
    ///
    /// 此接口（DescribeSeals）用于查询指定ID的印章信息。
    @inlinable
    public func describeSeals(_ input: DescribeSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSealsResponse {
        try await self.client.execute(action: "DescribeSeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询电子印章
    ///
    /// 此接口（DescribeSeals）用于查询指定ID的印章信息。
    @inlinable
    public func describeSeals(caller: Caller, sealIds: [String], userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSealsResponse> {
        self.describeSeals(.init(caller: caller, sealIds: sealIds, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询电子印章
    ///
    /// 此接口（DescribeSeals）用于查询指定ID的印章信息。
    @inlinable
    public func describeSeals(caller: Caller, sealIds: [String], userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSealsResponse {
        try await self.describeSeals(.init(caller: caller, sealIds: sealIds, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
