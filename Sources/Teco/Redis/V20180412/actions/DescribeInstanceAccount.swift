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

extension Redis {
    /// DescribeInstanceAccount请求参数结构体
    public struct DescribeInstanceAccountRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 分页大小
        public let limit: Int64

        /// 分页偏移量
        public let offset: Int64

        public init(instanceId: String, limit: Int64, offset: Int64) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeInstanceAccount返回参数结构体
    public struct DescribeInstanceAccountResponse: TCResponseModel {
        /// 账号详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accounts: [Account]?

        /// 账号个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accounts = "Accounts"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查看实例子账号信息
    @inlinable
    public func describeInstanceAccount(_ input: DescribeInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceAccountResponse> {
        self.client.execute(action: "DescribeInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例子账号信息
    @inlinable
    public func describeInstanceAccount(_ input: DescribeInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAccountResponse {
        try await self.client.execute(action: "DescribeInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例子账号信息
    @inlinable
    public func describeInstanceAccount(instanceId: String, limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceAccountResponse> {
        let input = DescribeInstanceAccountRequest(instanceId: instanceId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例子账号信息
    @inlinable
    public func describeInstanceAccount(instanceId: String, limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAccountResponse {
        let input = DescribeInstanceAccountRequest(instanceId: instanceId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
