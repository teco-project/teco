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

extension Ckafka {
    /// DescribeUser请求参数结构体
    public struct DescribeUserRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 按照名称过滤
        public let searchWord: String?

        /// 偏移
        public let offset: Int64?

        /// 本次返回个数
        public let limit: Int64?

        public init(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeUser返回参数结构体
    public struct DescribeUserResponse: TCResponseModel {
        /// 返回结果列表
        public let result: UserResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        try await self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        self.describeUser(DescribeUserRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        try await self.describeUser(DescribeUserRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
