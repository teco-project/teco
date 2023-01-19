//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Lighthouse {
    /// DescribeInstancesDiskNum请求参数结构体
    public struct DescribeInstancesDiskNumRequest: TCRequestModel {
        /// 实例ID列表。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// DescribeInstancesDiskNum返回参数结构体
    public struct DescribeInstancesDiskNumResponse: TCResponseModel {
        /// 挂载信息列表
        public let attachDetailSet: [AttachDetail]

        /// 挂载信息数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case attachDetailSet = "AttachDetailSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询实例挂载云硬盘数量
    ///
    /// 本接口(DescribeInstancesDiskNum)用于查询实例挂载云硬盘数量。
    @inlinable
    public func describeInstancesDiskNum(_ input: DescribeInstancesDiskNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesDiskNumResponse> {
        self.client.execute(action: "DescribeInstancesDiskNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例挂载云硬盘数量
    ///
    /// 本接口(DescribeInstancesDiskNum)用于查询实例挂载云硬盘数量。
    @inlinable
    public func describeInstancesDiskNum(_ input: DescribeInstancesDiskNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesDiskNumResponse {
        try await self.client.execute(action: "DescribeInstancesDiskNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例挂载云硬盘数量
    ///
    /// 本接口(DescribeInstancesDiskNum)用于查询实例挂载云硬盘数量。
    @inlinable
    public func describeInstancesDiskNum(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesDiskNumResponse> {
        self.describeInstancesDiskNum(DescribeInstancesDiskNumRequest(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例挂载云硬盘数量
    ///
    /// 本接口(DescribeInstancesDiskNum)用于查询实例挂载云硬盘数量。
    @inlinable
    public func describeInstancesDiskNum(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesDiskNumResponse {
        try await self.describeInstancesDiskNum(DescribeInstancesDiskNumRequest(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
