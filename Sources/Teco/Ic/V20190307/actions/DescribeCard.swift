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

extension Ic {
    /// DescribeCard请求参数结构体
    public struct DescribeCardRequest: TCRequest {
        /// 应用ID
        public let sdkappid: Int64

        /// 卡片ID
        public let iccid: String

        public init(sdkappid: Int64, iccid: String) {
            self.sdkappid = sdkappid
            self.iccid = iccid
        }

        enum CodingKeys: String, CodingKey {
            case sdkappid = "Sdkappid"
            case iccid = "Iccid"
        }
    }

    /// DescribeCard返回参数结构体
    public struct DescribeCardResponse: TCResponse {
        /// 卡片详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CardInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询卡片详情
    ///
    /// 查询卡片详细信息
    @inlinable
    public func describeCard(_ input: DescribeCardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCardResponse> {
        self.client.execute(action: "DescribeCard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询卡片详情
    ///
    /// 查询卡片详细信息
    @inlinable
    public func describeCard(_ input: DescribeCardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCardResponse {
        try await self.client.execute(action: "DescribeCard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询卡片详情
    ///
    /// 查询卡片详细信息
    @inlinable
    public func describeCard(sdkappid: Int64, iccid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCardResponse> {
        self.describeCard(.init(sdkappid: sdkappid, iccid: iccid), region: region, logger: logger, on: eventLoop)
    }

    /// 查询卡片详情
    ///
    /// 查询卡片详细信息
    @inlinable
    public func describeCard(sdkappid: Int64, iccid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCardResponse {
        try await self.describeCard(.init(sdkappid: sdkappid, iccid: iccid), region: region, logger: logger, on: eventLoop)
    }
}
