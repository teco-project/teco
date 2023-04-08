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
    /// DescribeAccessControlDetail请求参数结构体
    public struct DescribeAccessControlDetailRequest: TCRequestModel {
        /// 事件唯一id
        public let eventId: String

        public init(eventId: String) {
            self.eventId = eventId
        }

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
        }
    }

    /// DescribeAccessControlDetail返回参数结构体
    public struct DescribeAccessControlDetailResponse: TCResponseModel {
        /// 事件基本信息
        public let eventBaseInfo: RunTimeEventBaseInfo

        /// 进程信息
        public let processInfo: ProcessDetailInfo

        /// 被篡改信息
        public let tamperedFileInfo: FileAttributeInfo

        /// 事件描述
        public let eventDetail: AccessControlEventDescription

        /// 父进程信息
        public let parentProcessInfo: ProcessBaseInfo

        /// 祖先进程信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ancestorProcessInfo: ProcessBaseInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventBaseInfo = "EventBaseInfo"
            case processInfo = "ProcessInfo"
            case tamperedFileInfo = "TamperedFileInfo"
            case eventDetail = "EventDetail"
            case parentProcessInfo = "ParentProcessInfo"
            case ancestorProcessInfo = "AncestorProcessInfo"
            case requestId = "RequestId"
        }
    }

    /// 运行时访问控制事件详细信息
    ///
    /// 查询运行时访问控制事件的详细信息
    @inlinable
    public func describeAccessControlDetail(_ input: DescribeAccessControlDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessControlDetailResponse> {
        self.client.execute(action: "DescribeAccessControlDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时访问控制事件详细信息
    ///
    /// 查询运行时访问控制事件的详细信息
    @inlinable
    public func describeAccessControlDetail(_ input: DescribeAccessControlDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessControlDetailResponse {
        try await self.client.execute(action: "DescribeAccessControlDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时访问控制事件详细信息
    ///
    /// 查询运行时访问控制事件的详细信息
    @inlinable
    public func describeAccessControlDetail(eventId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessControlDetailResponse> {
        self.describeAccessControlDetail(.init(eventId: eventId), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时访问控制事件详细信息
    ///
    /// 查询运行时访问控制事件的详细信息
    @inlinable
    public func describeAccessControlDetail(eventId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessControlDetailResponse {
        try await self.describeAccessControlDetail(.init(eventId: eventId), region: region, logger: logger, on: eventLoop)
    }
}
