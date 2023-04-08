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

extension Tke {
    /// DescribeEKSContainerInstanceEvent请求参数结构体
    public struct DescribeEKSContainerInstanceEventRequest: TCRequestModel {
        /// 容器实例id
        public let eksCiId: String

        /// 最大事件数量。默认为50，最大取值100。
        public let limit: Int64?

        public init(eksCiId: String, limit: Int64? = nil) {
            self.eksCiId = eksCiId
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case eksCiId = "EksCiId"
            case limit = "Limit"
        }
    }

    /// DescribeEKSContainerInstanceEvent返回参数结构体
    public struct DescribeEKSContainerInstanceEventResponse: TCResponseModel {
        /// 事件集合
        public let events: [Event]

        /// 容器实例id
        public let eksCiId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case events = "Events"
            case eksCiId = "EksCiId"
            case requestId = "RequestId"
        }
    }

    /// 查询容器实例的事件
    @inlinable
    public func describeEKSContainerInstanceEvent(_ input: DescribeEKSContainerInstanceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSContainerInstanceEventResponse> {
        self.client.execute(action: "DescribeEKSContainerInstanceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器实例的事件
    @inlinable
    public func describeEKSContainerInstanceEvent(_ input: DescribeEKSContainerInstanceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSContainerInstanceEventResponse {
        try await self.client.execute(action: "DescribeEKSContainerInstanceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器实例的事件
    @inlinable
    public func describeEKSContainerInstanceEvent(eksCiId: String, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSContainerInstanceEventResponse> {
        self.describeEKSContainerInstanceEvent(.init(eksCiId: eksCiId, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器实例的事件
    @inlinable
    public func describeEKSContainerInstanceEvent(eksCiId: String, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSContainerInstanceEventResponse {
        try await self.describeEKSContainerInstanceEvent(.init(eksCiId: eksCiId, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
