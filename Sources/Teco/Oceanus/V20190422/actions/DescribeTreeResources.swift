//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Oceanus {
    /// DescribeTreeResources请求参数结构体
    public struct DescribeTreeResourcesRequest: TCRequestModel {
        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(workSpaceId: String? = nil) {
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// DescribeTreeResources返回参数结构体
    public struct DescribeTreeResourcesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询树状结构资源列表
    @inlinable
    public func describeTreeResources(_ input: DescribeTreeResourcesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTreeResourcesResponse > {
        self.client.execute(action: "DescribeTreeResources", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询树状结构资源列表
    @inlinable
    public func describeTreeResources(_ input: DescribeTreeResourcesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTreeResourcesResponse {
        try await self.client.execute(action: "DescribeTreeResources", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询树状结构资源列表
    @inlinable
    public func describeTreeResources(workSpaceId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTreeResourcesResponse > {
        self.describeTreeResources(DescribeTreeResourcesRequest(workSpaceId: workSpaceId), logger: logger, on: eventLoop)
    }

    /// 查询树状结构资源列表
    @inlinable
    public func describeTreeResources(workSpaceId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTreeResourcesResponse {
        try await self.describeTreeResources(DescribeTreeResourcesRequest(workSpaceId: workSpaceId), logger: logger, on: eventLoop)
    }
}
