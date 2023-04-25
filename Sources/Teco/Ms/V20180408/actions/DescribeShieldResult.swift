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

extension Ms {
    /// DescribeShieldResult请求参数结构体
    public struct DescribeShieldResultRequest: TCRequestModel {
        /// 任务唯一标识
        public let itemId: String

        public init(itemId: String) {
            self.itemId = itemId
        }

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
        }
    }

    /// DescribeShieldResult返回参数结构体
    public struct DescribeShieldResultResponse: TCResponseModel {
        /// 任务状态: 0-请返回,1-已完成,2-处理中,3-处理出错,4-处理超时
        public let taskStatus: UInt64

        /// app加固前的详细信息
        public let appDetailInfo: AppDetailInfo

        /// app加固后的详细信息
        public let shieldInfo: ShieldInfo

        /// 状态描述
        public let statusDesc: String

        /// 状态指引
        public let statusRef: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskStatus = "TaskStatus"
            case appDetailInfo = "AppDetailInfo"
            case shieldInfo = "ShieldInfo"
            case statusDesc = "StatusDesc"
            case statusRef = "StatusRef"
            case requestId = "RequestId"
        }
    }

    /// 查询加固结果
    ///
    /// 通过唯一标识获取加固的结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldResult(_ input: DescribeShieldResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShieldResultResponse> {
        self.client.execute(action: "DescribeShieldResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询加固结果
    ///
    /// 通过唯一标识获取加固的结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldResult(_ input: DescribeShieldResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShieldResultResponse {
        try await self.client.execute(action: "DescribeShieldResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询加固结果
    ///
    /// 通过唯一标识获取加固的结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldResult(itemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShieldResultResponse> {
        self.describeShieldResult(.init(itemId: itemId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询加固结果
    ///
    /// 通过唯一标识获取加固的结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldResult(itemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShieldResultResponse {
        try await self.describeShieldResult(.init(itemId: itemId), region: region, logger: logger, on: eventLoop)
    }
}
