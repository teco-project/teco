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

extension Trp {
    /// DescribeCodePackStatus请求参数结构体
    public struct DescribeCodePackStatusRequest: TCRequestModel {
        /// 码包ID
        public let packId: String

        /// 企业ID
        public let corpId: UInt64?

        public init(packId: String, corpId: UInt64? = nil) {
            self.packId = packId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case packId = "PackId"
            case corpId = "CorpId"
        }
    }

    /// DescribeCodePackStatus返回参数结构体
    public struct DescribeCodePackStatusResponse: TCResponseModel {
        /// 码包状态 init: 初始化, pending: 执行中, done: 完成, error: 失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询码包状态
    @inlinable
    public func describeCodePackStatus(_ input: DescribeCodePackStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodePackStatusResponse> {
        self.client.execute(action: "DescribeCodePackStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询码包状态
    @inlinable
    public func describeCodePackStatus(_ input: DescribeCodePackStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodePackStatusResponse {
        try await self.client.execute(action: "DescribeCodePackStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询码包状态
    @inlinable
    public func describeCodePackStatus(packId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodePackStatusResponse> {
        self.describeCodePackStatus(.init(packId: packId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询码包状态
    @inlinable
    public func describeCodePackStatus(packId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodePackStatusResponse {
        try await self.describeCodePackStatus(.init(packId: packId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
