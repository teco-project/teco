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

extension Trro {
    /// DescribeDeviceSessionDetails请求参数结构体
    public struct DescribeDeviceSessionDetailsRequest: TCRequestModel {
        /// 会话ID
        public let sessionId: String

        public init(sessionId: String) {
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
        }
    }

    /// DescribeDeviceSessionDetails返回参数结构体
    public struct DescribeDeviceSessionDetailsResponse: TCResponseModel {
        /// 按设备区分的会话详细数据
        public let details: [SessionDeviceDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case details = "Details"
            case requestId = "RequestId"
        }
    }

    /// 获取设备会话数据详单
    @inlinable
    public func describeDeviceSessionDetails(_ input: DescribeDeviceSessionDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceSessionDetailsResponse> {
        self.client.execute(action: "DescribeDeviceSessionDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备会话数据详单
    @inlinable
    public func describeDeviceSessionDetails(_ input: DescribeDeviceSessionDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceSessionDetailsResponse {
        try await self.client.execute(action: "DescribeDeviceSessionDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备会话数据详单
    @inlinable
    public func describeDeviceSessionDetails(sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceSessionDetailsResponse> {
        self.describeDeviceSessionDetails(.init(sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备会话数据详单
    @inlinable
    public func describeDeviceSessionDetails(sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceSessionDetailsResponse {
        try await self.describeDeviceSessionDetails(.init(sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }
}
