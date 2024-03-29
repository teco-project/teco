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

extension Tcss {
    /// DescribeRiskSyscallDetail请求参数结构体
    public struct DescribeRiskSyscallDetailRequest: TCRequest {
        /// 事件唯一id
        public let eventId: String

        public init(eventId: String) {
            self.eventId = eventId
        }

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
        }
    }

    /// DescribeRiskSyscallDetail返回参数结构体
    public struct DescribeRiskSyscallDetailResponse: TCResponse {
        /// 事件基本信息
        public let eventBaseInfo: RunTimeEventBaseInfo

        /// 进程信息
        public let processInfo: ProcessDetailInfo

        /// 父进程信息
        public let parentProcessInfo: ProcessDetailBaseInfo

        /// 事件描述
        public let eventDetail: RiskSyscallEventDescription

        /// 祖先进程信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ancestorProcessInfo: ProcessBaseInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventBaseInfo = "EventBaseInfo"
            case processInfo = "ProcessInfo"
            case parentProcessInfo = "ParentProcessInfo"
            case eventDetail = "EventDetail"
            case ancestorProcessInfo = "AncestorProcessInfo"
            case requestId = "RequestId"
        }
    }

    /// 运行时高危系统调用事件详细信息
    ///
    /// 查询高危系统调用事件详细信息
    @inlinable
    public func describeRiskSyscallDetail(_ input: DescribeRiskSyscallDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallDetailResponse> {
        self.client.execute(action: "DescribeRiskSyscallDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用事件详细信息
    ///
    /// 查询高危系统调用事件详细信息
    @inlinable
    public func describeRiskSyscallDetail(_ input: DescribeRiskSyscallDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallDetailResponse {
        try await self.client.execute(action: "DescribeRiskSyscallDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时高危系统调用事件详细信息
    ///
    /// 查询高危系统调用事件详细信息
    @inlinable
    public func describeRiskSyscallDetail(eventId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallDetailResponse> {
        self.describeRiskSyscallDetail(.init(eventId: eventId), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用事件详细信息
    ///
    /// 查询高危系统调用事件详细信息
    @inlinable
    public func describeRiskSyscallDetail(eventId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallDetailResponse {
        try await self.describeRiskSyscallDetail(.init(eventId: eventId), region: region, logger: logger, on: eventLoop)
    }
}
